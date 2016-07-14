all gateways process
xpdlReaderForAllGatewaysProcess

	^(XPDLReader2 for: 'all gateways' withString: self processDefinition_all_gateways)
			connectProcesses;
			yourself