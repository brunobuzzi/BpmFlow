all gateways process
xpdlReaderForAllGatewaysProcess

	^(XPDLReader2 forProcessNamed: 'all gateways' withString: self processDefinition_all_gateways)
			connectProcesses;
			yourself