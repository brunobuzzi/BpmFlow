other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'dashboard-process-with-loop' withString: XPDLProcessDefinitionTemplate xpdlDefinition_dashboard_with_loop)
				connectProcesses;
				yourself.