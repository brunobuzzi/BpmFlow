other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'Process with Script' withString: XPDLProcessDefinitionTemplate xpdlDefinition_process_with_script)
				connectProcesses; 
				yourself