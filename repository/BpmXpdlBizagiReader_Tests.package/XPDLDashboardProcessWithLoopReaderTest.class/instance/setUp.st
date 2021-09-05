other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'dashboard-process-with-loop' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_dashboard_with_loop)
				connectProcesses;
				yourself.