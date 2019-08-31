other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'dashboard-process-with-loop' withString: XPDLProcessDefinitionTemplate xpdlExample_dashboard_with_loop)
				connectProcesses;
				yourself.