form instances
formInstance_study_loan_application_1: receiverProcessId in: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: (self newInstanceTemplate formInstance_ue_study_loan_application_1: receiverProcessId printString)
		definitionNamed: 'study-loan-application'  
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_study_loan_application
		in: aBpmProcessInstance