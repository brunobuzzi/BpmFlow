form instances
formInstance_financial_report: aBpmProcessInstance

	^testRoot
			buildFormInstanceNamed: 'financial-report' 
			withXml: self newInstanceTemplate formInstance_ue_financial_report_1 
			definitionXml: self newDefinitionTemplate formDefinition_ue_financial_report 
			in: 'ue' 
			process: aBpmProcessInstance