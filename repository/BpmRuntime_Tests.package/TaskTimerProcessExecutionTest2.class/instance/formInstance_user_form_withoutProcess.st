form instance
formInstance_user_form_withoutProcess

	^testRoot
			buildNoProcessFormInstanceNamed: 'user-form'
			withXml: testRoot newInstanceTemplate formInstance_ue_user_form 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_user_form 
			in: 'ue' 
			process: procInstance