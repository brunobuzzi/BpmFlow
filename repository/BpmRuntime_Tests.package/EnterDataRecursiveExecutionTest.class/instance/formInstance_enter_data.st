form instance
formInstance_enter_data

	^testRoot
			buildFormInstanceNamed:  'enter-data-recursive'  
			withXml: testRoot newInstanceTemplate formInstance_ue_enter_data_recursive_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_enter_data_recursive 
			in: 'ue' 
			process: procInstance