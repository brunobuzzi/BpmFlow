event based gateway
xpdlReaderForEventBasedGateway2

	^(self getXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: self processDefinition_event_based_gateway_02)
			connectProcesses;
			yourself