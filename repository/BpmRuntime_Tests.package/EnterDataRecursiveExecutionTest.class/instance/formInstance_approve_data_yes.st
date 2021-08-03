form instance
formInstance_approve_data_yes

	^testRoot
			buildFormInstanceNamed:  'approve-data-recursive'  
			withXml: self newInstanceTemplate formInstance_ue_approve_data_recursive_yes 
			definitionXml: self newDefinitionTemplate formDefinition_ue_approve_data_recursive 
			in: 'ue' 
			process: procInstance