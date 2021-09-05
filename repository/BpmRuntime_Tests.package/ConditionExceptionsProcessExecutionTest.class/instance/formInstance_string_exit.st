form instance
formInstance_string_exit

	^testRoot
			buildFormInstanceNamed: 'all-field-types'  
			withXml: testRoot newInstanceTemplate formInstance_ue_all_field_types_string_exit 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_all_field_types 
			in: 'ue' 
			process: procInstance