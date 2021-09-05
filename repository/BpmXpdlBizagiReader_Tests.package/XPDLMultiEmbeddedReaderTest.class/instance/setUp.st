other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'multi-embedded' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_Embedded_Embedded_Proc)
			connectProcesses;
			yourself.