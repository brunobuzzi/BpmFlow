form instance
formInstance_enter_data

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_enter_data_recursive_1
		definitionNamed: 'approve-data-recursive' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_enter_data_recursive
		in: procInstance