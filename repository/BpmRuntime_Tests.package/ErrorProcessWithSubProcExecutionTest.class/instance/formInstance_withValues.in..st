other
formInstance_withValues: anArray in: aBpmProcessInstance
	| formInstance |

	formInstance := testRoot newInstanceTemplate 
										formInstance_ue_dashboard_form: (anArray at: 1) 
										cost: (anArray at: 2) 
										deductible: (anArray at: 3) 
										confirmed: (anArray at: 4) 
										directClient: (anArray at: 5) 
										country: (anArray at: 6) 
										city: (anArray at: 7) 
										industry: (anArray at: 8).

	^testRoot
			buildFormInstanceNamed: 'dashboard-form'
			withXml: formInstance 
			definitionXml: testRoot newDefinitionTemplate formDefinition_ue_dashboard_form 
			in: 'ue' 
			process: aBpmProcessInstance