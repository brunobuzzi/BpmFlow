other
setUp

	reader := (self getXpdlReaderClass forProcessNamed: 'Process with Script' withString: XPDLProcessDefinitionTemplate xpdlExample_process_with_script)
				connectProcesses; 
				yourself