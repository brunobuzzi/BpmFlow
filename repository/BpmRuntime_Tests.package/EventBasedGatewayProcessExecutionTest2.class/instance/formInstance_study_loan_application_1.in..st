form instances
formInstance_study_loan_application_1: receiverProcessId in: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'study-loan-application'
			withXml: (self newInstanceTemplate formInstance_ue_study_loan_application_1: receiverProcessId printString) 
			definitionXml: self newDefinitionTemplate formDefinition_ue_study_loan_application 
			in: 'ue' 
			process: aBpmProcessInstance