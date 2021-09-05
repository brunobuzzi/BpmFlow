other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'multi-role' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_data_entry)
				yourself