form instance
formInstance_user_form

	^testRoot
			buildFormInstanceNamed: 'user-form' 
			withXml: self newInstanceTemplate formInstance_ue_user_form 
			definitionXml: self newDefinitionTemplate formDefinition_ue_user_form 
			in: 'ue' 
			process: procInstance