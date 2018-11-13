event based gateway
xpdlReaderForEventBasedGateway

	^(self getXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: self processDefinition_event_based_gateway_01)
			connectProcesses;
			yourself