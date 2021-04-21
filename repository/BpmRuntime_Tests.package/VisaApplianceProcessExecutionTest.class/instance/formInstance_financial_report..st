form instances
formInstance_financial_report: aBpmProcessInstance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_financial_report_1
		definitionNamed: 'financial-report' 
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_emit_visa
		in: aBpmProcessInstance