other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'Unsupported Elements' withString: XPDLProcessDefinitionTemplate xpdlDefinition_unsupported_elements)
				connectProcesses;
				yourself.