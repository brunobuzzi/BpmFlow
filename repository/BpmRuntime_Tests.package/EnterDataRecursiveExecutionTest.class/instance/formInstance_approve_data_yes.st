form instance
formInstance_approve_data_yes

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_approve_data_recursive_yes
		definitionNamed: 'approve-data-recursive' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_approve_data_recursive
		in: procInstance