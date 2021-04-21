form instances
formInstance_analyze_appliance_2

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_analyze_appliance_2
		definitionNamed: 'analyze-appliance'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_analyze_appliance
		in: procInstance