other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'dashboard-process'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_dashboard_process
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition