form instances
formInstance_loan_application: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_loan_application
		definitionNamed: 'loan-application' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_loan_application
		in: aBpmProcessInstance