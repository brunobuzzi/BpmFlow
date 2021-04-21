form instances
formInstance_citizen_appliance_random_country

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_citizen_appliance_random_country
		definitionNamed: 'citizen-appliance'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_citizen_appliance
		in: procInstance