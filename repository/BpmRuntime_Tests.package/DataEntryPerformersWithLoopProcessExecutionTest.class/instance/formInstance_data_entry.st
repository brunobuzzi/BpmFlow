form instance
formInstance_data_entry

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_data_entry_1
		definitionNamed: 'all-field-types' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_data_entry
		in: procInstance