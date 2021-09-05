other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'MultiplePools' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_VariousMultiplePools)
					yourself