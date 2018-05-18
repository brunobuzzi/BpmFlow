form instance
formInstance_amount_exit: amountString

	^self createFormInstance: #form_amount_exit withValues: (Array with: amountString) definitionNamed: 'all-field-types' app: 'ue' definitionMethod: #formDefinition_all_types