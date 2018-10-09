other
setUp

	reader := (XPDLReader2 forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate processDefinition_event_based_gateway_01)
				connectProcesses;
				yourself.