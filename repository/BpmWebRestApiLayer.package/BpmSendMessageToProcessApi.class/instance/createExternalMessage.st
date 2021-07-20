other
createExternalMessage

	^(BpmExternalProcessMessage newOn: systemRoot)
			receiverAppName: appName;
			receiverProcessName: processName;
			receiverGatewayName: gatewayName;
			receiverEventName: eventName;
			receiverProcessId: id;
			yourself