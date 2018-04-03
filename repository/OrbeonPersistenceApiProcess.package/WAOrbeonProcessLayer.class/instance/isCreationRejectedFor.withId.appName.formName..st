other
isCreationRejectedFor: anOrbeonSavedFormDefinition withId: id appName: appName formName: formName
	"The creation is rejected for <anOrbeonSavedFormDefinition> when already exist a form definition named <formName> in application named <appName> but the <ids> are different.
	This case happend when a pair <appName,formName> is saved with different id. [IN THIS PERSISTENCE LAYER THIS IS FORBIDDEN BY CODE]"

	"This control is implemented here because BPM issue #395 (https://github.com/brunobuzzi/BpmFlow/issues/395)

	If BpmProcessDefinition has been already created without any BpmProcessInstances and FormInstances, and a FormDefinition or Application is renamed 
	--> when a BpmProcessInstance is created the execution is going fail because the forms were move to another app or form name.

	So if aBpmProcessDefinition already exist (using) FormDefinitions 
	--> app name and form name can NOT be renamed."
	(BpmProcessDefinition getAllVersionsIn: anOrbeonSavedFormDefinition getApplicationName) do: [:eachDef | 
		(eachDef getOrbeonTasks anySatisfy: [:eachTask | anOrbeonSavedFormDefinition notNil and: 
																				[(eachTask name = anOrbeonSavedFormDefinition formName) and: 
																				[anOrbeonSavedFormDefinition id ~= id]]]) 
		ifTrue: [^true "creation rejected"]
	].

	^((self getOrbeonApplicationClass includesDefinitionNamed: formName in: appName) 
			and: [anOrbeonSavedFormDefinition notNil 
				and:[(anOrbeonSavedFormDefinition applicationName = appName) 
					and:[(anOrbeonSavedFormDefinition formName = formName) 
						and: [anOrbeonSavedFormDefinition id ~= id]]]])