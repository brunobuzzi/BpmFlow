event based gateway
xpdlReaderForEventBasedGateway3

	^(self getXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: self processDefinition_event_based_gateway_03)
			connectProcesses;
			yourself