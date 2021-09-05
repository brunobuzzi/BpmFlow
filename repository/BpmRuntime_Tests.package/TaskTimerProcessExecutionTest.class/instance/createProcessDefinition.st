other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'task_timer'
				withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Task
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition