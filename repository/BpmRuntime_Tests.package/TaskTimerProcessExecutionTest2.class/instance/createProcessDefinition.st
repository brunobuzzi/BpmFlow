other
createProcessDefinition
	| newProcDefinition |
	newProcDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'task_timer_2'
				withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Task_2
				inEnvironmentNamed: 'env-ue'
				inApplicationNamed: 'ue'.
	^newProcDefinition