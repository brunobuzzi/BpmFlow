form instance
formInstance_data_approved

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_data_approved
		definitionNamed: 'all-field-types' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_data_approved
		in: procInstance