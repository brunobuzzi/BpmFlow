form instances
formInstance_citizen_appliance_2

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_citizen_appliance_2
		definitionNamed: 'citizen-appliance'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_citizen_appliance
		in: procInstance