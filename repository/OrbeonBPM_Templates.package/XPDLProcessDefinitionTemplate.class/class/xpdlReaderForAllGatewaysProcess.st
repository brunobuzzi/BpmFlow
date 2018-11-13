all gateways process
xpdlReaderForAllGatewaysProcess

	^(self getXpdlReaderClass forProcessNamed: 'all gateways' withString: self processDefinition_all_gateways)
			connectProcesses;
			yourself