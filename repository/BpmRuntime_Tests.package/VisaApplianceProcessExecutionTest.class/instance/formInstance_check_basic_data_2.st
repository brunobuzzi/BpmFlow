form instances
formInstance_check_basic_data_2

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_check_basic_data_2
		definitionNamed: 'check-basic-data' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_check_basic_data
		in: procInstance