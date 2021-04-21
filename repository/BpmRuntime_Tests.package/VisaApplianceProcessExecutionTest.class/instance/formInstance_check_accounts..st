form instances
formInstance_check_accounts: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_check_accounts_1
		definitionNamed: 'check-accounts' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_check_accounts
		in: aBpmProcessInstance