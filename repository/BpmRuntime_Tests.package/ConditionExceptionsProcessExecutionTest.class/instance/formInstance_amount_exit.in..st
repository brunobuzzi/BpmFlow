form instance
formInstance_amount_exit: amountString in: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'all-field-types'  
			withXml: (self newInstanceTemplate formInstance_ue_all_field_types_amount_exit: amountString) 
			definitionXml: self newDefinitionTemplate formDefinition_ue_all_field_types 
			in: 'ue' 
			process: aBpmProcessInstance