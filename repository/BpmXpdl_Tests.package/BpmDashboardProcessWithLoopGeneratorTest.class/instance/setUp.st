other
setUp

	super setUp.

	testRoot 
		newBpmProcessDefinitionNamed: 'dashboard-process-with-loop'
		withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_dashboard_with_loop
		inEnvironmentNamed: self defaultEnvironmentName
		inApplicationNamed: self defaultApplicationName.