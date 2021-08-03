form instances
formInstance_loan_application: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'loan-application'
			withXml: self newInstanceTemplate formInstance_ue_loan_application 
			definitionXml: self newDefinitionTemplate formDefinition_ue_loan_application 
			in: 'ue' 
			process: aBpmProcessInstance