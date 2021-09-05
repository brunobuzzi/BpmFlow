form instances
formInstance_study_loan_application_1: receiverProcessId in: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'study-loan-application'
			withXml: (testRoot newInstanceTemplate formInstance_ue_study_loan_application_1: receiverProcessId printString) 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_study_loan_application 
			in: 'ue' 
			process: aBpmProcessInstance