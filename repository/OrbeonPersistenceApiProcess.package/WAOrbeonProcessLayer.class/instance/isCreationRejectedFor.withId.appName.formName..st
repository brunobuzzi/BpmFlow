other
isCreationRejectedFor: latestDefinition withId: id appName: appName formName: formName
	"The creation is rejected for <latestDefinition> when already exist a form definition named <formName> in application named <appName> but the <ids> are different.
	This case happend when a pair <appName,formName> is saved with different id. [IN THIS PERSISTENCE LAYER THIS IS FORBIDDEN BY CODE]"

	^((self getOrbeonApplicationClass includesDefinitionNamed: formName in: appName) 
			and: [latestDefinition notNil 
				and:[(latestDefinition applicationName = appName) 
					and:[(latestDefinition formName = formName) 
						and: [latestDefinition id ~= id]]]])