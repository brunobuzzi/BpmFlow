form instance
formInstance_boolean_exit

	^testRoot
			buildFormInstanceNamed: 'all-field-types'  
			withXml: self newInstanceTemplate formInstance_ue_all_field_types_boolean_exit 
			definitionXml: self newDefinitionTemplate formDefinition_ue_all_field_types 
			in: 'ue' 
			process: procInstance