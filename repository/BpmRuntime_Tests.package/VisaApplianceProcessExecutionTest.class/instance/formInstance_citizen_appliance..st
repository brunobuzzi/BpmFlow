form instances
formInstance_citizen_appliance: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_citizen_appliance_1
		definitionNamed: 'citizen-appliance'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_citizen_appliance
		in: aBpmProcessInstance