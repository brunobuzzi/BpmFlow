form instances
formInstance_loan_application: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_loan_application
			withValues: #() 
			definitionNamed: 'loan-application' 
			app: 'ue' 
			definitionMethod: #form_loan_application
			in: aBpmProcessInstance