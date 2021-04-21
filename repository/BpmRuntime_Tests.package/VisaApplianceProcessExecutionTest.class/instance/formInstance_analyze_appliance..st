form instances
formInstance_analyze_appliance: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_analyze_appliance_1
		definitionNamed: 'analyze-appliance'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_analyze_appliance
		in: aBpmProcessInstance