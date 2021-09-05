form instance
formInstance_data_entry

	^testRoot
			buildFormInstanceNamed: 'data-entry'   
			withXml: testRoot newInstanceTemplate formInstance_ue_data_entry_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_data_entry 
			in: 'ue' 
			process: procInstance