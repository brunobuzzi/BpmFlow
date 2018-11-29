other
setUp

	reader := (self getXpdlReaderClass forProcessNamed: 'Unsupported Elements' withString: XPDLProcessDefinitionTemplate xpdlExample_unsupported_elements)
				connectProcesses;
				yourself.