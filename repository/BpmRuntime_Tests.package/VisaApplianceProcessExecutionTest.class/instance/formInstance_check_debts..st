form instances
formInstance_check_debts: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-debts'
			withXml: self newInstanceTemplate formInstance_ue_check_debts_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_check_debts 
			in: 'ue' 
			process: aBpmProcessInstance