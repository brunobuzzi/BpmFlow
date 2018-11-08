form instances
formInstance_applicant_home_office_report: aBpmProcessInstance

	^self formCreatorClass createFormInstance: #form_applicant_home_office_report_1 
			definitionNamed: 'applicant-home-office-report' 
			app: 'ue' definitionMethod: #formDefinition_applicant_home_office_report
			in: aBpmProcessInstance