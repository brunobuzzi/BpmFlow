form instances
formInstance_financial_report: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'financial-report' 
			withXml: testRoot newInstanceTemplate formInstance_ue_financial_report_1 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_financial_report 
			in: 'ue' 
			process: aBpmProcessInstance