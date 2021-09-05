other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'Unsupported Elements' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_unsupported_elements)
				connectProcesses;
				yourself.