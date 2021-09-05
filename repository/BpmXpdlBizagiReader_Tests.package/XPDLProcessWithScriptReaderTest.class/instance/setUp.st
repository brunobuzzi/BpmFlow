other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'Process with Script' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_process_with_script)
				connectProcesses; 
				yourself