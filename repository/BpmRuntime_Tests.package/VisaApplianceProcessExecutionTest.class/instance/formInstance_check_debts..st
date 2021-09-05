form instances
formInstance_check_debts: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'check-debts'
			withXml: testRoot newInstanceTemplate formInstance_ue_check_debts_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_check_debts 
			in: 'ue' 
			process: aBpmProcessInstance