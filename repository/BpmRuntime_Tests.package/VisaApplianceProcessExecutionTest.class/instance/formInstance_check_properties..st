form instances
formInstance_check_properties: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_check_properties_1
		definitionNamed: 'check-properties' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_check_properties
		in: aBpmProcessInstance