form instance
formInstance_time_exit

	^testRoot
			buildFormInstanceNamed: 'all-field-types'  
			withXml: self newInstanceTemplate formInstance_ue_all_field_types_time_exit 
			definitionXml: self newDefinitionTemplate formDefinition_ue_all_field_types 
			in: 'ue' 
			process: procInstance