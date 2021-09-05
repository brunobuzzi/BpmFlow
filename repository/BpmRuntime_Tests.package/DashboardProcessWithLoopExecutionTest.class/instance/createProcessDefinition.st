other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'dashboard-process-with-loop'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_dashboard_with_loop
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition