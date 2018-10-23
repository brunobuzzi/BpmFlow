form instances
formInstance_study_loan_application_1: receiverProcessId in: aBpmProcessInstance

	^self createFormInstance: #form_study_loan_application_1:
			withValues: (Array with: receiverProcessId printString) 
			definitionNamed: 'study-loan-application' 
			app: 'ue' 
			definitionMethod: #form_study_loan_application
			in: aBpmProcessInstance