form instance
formInstance_amount_exit: amountString in: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_all_field_types_amount_exit: amountString)
		definitionNamed: 'all-field-types' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_all_field_types
		in: aBpmProcessInstance