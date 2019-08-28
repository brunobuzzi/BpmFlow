other
setUp

	reader := (self defaultXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate xpdlExample_event_based_gateway_01)
				connectProcesses;
				yourself.