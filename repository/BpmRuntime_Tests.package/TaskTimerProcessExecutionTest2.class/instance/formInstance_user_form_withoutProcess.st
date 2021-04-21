form instance
formInstance_user_form_withoutProcess

	^self formCreatorClass 
		buildFormInstanceWithoutProcessFrom: self newInstanceTemplate formInstance_ue_user_form
		definitionNamed: 'user-form'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_user_form
		in: procInstance