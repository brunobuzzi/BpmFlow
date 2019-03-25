other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'Unsupported Elements' withString: XPDLProcessDefinitionTemplate xpdlExample_unsupported_elements)
				connectProcesses;
				yourself.