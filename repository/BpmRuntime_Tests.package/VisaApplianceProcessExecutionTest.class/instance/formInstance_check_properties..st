form instances
formInstance_check_properties: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-properties'
			withXml: testRoot newInstanceTemplate formInstance_ue_check_properties_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_check_properties 
			in: 'ue' 
			process: aBpmProcessInstance