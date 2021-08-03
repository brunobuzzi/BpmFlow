form instances
formInstance_check_basic_data: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-basic-data' 
			withXml: self newInstanceTemplate formInstance_ue_check_basic_data_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_check_basic_data 
			in: 'ue' 
			process: aBpmProcessInstance