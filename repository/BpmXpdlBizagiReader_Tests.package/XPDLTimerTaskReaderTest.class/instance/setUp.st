other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'timer_task' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Task)
				yourself