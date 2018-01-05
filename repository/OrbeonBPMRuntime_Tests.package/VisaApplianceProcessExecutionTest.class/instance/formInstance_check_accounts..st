form instances
formInstance_check_accounts: aBpmProcessInstance

	^self createFormInstance: #form_check_accounts_1 
			definitionNamed: 'check-accounts' 
			app: 'ue' 
			definitionMethod: #formDefinition_check_accounts
			in: aBpmProcessInstance