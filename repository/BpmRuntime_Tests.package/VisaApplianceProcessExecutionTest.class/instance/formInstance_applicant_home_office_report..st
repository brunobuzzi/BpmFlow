form instances
formInstance_applicant_home_office_report: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'applicant-home-office-report'
			withXml: self newInstanceTemplate formInstance_ue_applicant_home_office_report_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_applicant_home_office_report 
			in: 'ue' 
			process: aBpmProcessInstance