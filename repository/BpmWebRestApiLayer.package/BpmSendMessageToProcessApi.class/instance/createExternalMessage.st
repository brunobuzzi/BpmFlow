other
createExternalMessage

	^BpmExternalProcessMessage new
			receiverAppName: appName;
			receiverProcessName: processName;
			receiverGatewayName: gatewayName;
			receiverEventName: eventName;
			receiverProcessId: id;
			yourself