form instances
formInstance_check_debts: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_check_debts_1 
			definitionNamed: 'check-debts' 
			app: 'ue' 
			definitionMethod: #formDefinition_check_debts
			in: aBpmProcessInstance