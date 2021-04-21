form instances
formInstance_applicant_home_office_report: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_applicant_home_office_report_1
		definitionNamed: 'applicant-home-office-report'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_applicant_home_office_report
		in: aBpmProcessInstance