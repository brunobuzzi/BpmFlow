form instance
formInstance_time_exit

	^testRoot
			buildFormInstanceNamed: 'all-field-types'  
			withXml: testRoot newInstanceTemplate formInstance_ue_all_field_types_time_exit 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_all_field_types 
			in: 'ue' 
			process: procInstance