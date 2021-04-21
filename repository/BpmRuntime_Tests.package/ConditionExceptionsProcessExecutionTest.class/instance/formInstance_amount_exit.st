form instance
formInstance_amount_exit

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_all_field_types_amount_exit
		definitionNamed: 'all-field-types' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_all_field_types
		in: procInstance