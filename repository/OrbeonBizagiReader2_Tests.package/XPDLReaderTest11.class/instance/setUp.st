other
setUp

	reader := (self getXpdlReaderClass forProcessNamed: 'Unsupported Elements' withString: XPDLProcessDefinitionTemplate processDefinition_unsupported_elements)
				connectProcesses;
				yourself.