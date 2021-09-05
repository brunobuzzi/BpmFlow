other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'timer-process-start'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_Timer_Process_Start
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition