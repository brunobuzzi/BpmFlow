form instances
formInstance_financial_report: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_financial_report_1 
			definitionNamed: 'financial-report' 
			app: 'ue' 
			definitionMethod: #formDefinition_financial_report
			in: aBpmProcessInstance