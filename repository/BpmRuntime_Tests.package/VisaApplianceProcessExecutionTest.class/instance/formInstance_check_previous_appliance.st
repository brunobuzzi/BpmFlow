form instances
formInstance_check_previous_appliance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_check_previous_appliance_1
		definitionNamed: 'check-previous-appliance'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_check_previous_appliance
		in: procInstance