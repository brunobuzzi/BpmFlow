other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'Process with Script' withString: XPDLProcessDefinitionTemplate xpdlExample_process_with_script)
				connectProcesses; 
				yourself