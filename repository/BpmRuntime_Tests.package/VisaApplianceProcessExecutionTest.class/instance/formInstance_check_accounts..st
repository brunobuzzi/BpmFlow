form instances
formInstance_check_accounts: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-accounts' 
			withXml: self newInstanceTemplate formInstance_ue_check_accounts_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_check_accounts 
			in: 'ue' 
			process: aBpmProcessInstance