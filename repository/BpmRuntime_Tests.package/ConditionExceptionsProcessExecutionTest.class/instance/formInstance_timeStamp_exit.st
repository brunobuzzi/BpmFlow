form instance
formInstance_timeStamp_exit

	^testRoot
			buildFormInstanceNamed: 'all-field-types'  
			withXml: self newInstanceTemplate formInstance_ue_all_field_types_timeStamp_exit 
			definitionXml: self newDefinitionTemplate formDefinition_ue_all_field_types 
			in: 'ue' 
			process: procInstance