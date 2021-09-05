other
setUp

	super setUp.

	testRoot 
		newBpmProcessDefinitionNamed: 'timer-process'
		withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_Timer_Process
		inEnvironmentNamed: self defaultEnvironmentName
		inApplicationNamed: self defaultApplicationName.