other
setUp

	super setUp.

	reader := (testRoot newXpdlReaderForProcessNamed: 'Event Based Gateway' withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_event_based_gateway_01)
				connectProcesses;
				yourself.