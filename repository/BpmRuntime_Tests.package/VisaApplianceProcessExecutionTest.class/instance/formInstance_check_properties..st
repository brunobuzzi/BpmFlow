form instances
formInstance_check_properties: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-properties'
			withXml: self newInstanceTemplate formInstance_ue_check_properties_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_check_properties 
			in: 'ue' 
			process: aBpmProcessInstance