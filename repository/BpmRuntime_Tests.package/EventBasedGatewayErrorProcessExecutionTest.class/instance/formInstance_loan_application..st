form instances
formInstance_loan_application: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'loan-application'
			withXml: testRoot newInstanceTemplate formInstance_ue_loan_application 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_loan_application 
			in: 'ue' 
			process: aBpmProcessInstance