other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'timer-process-start-simple'
				withXpdlString: XPDLProcessDefinitionTemplate 
						xpdlDefinition_Timer_Process_Start_Simple
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition