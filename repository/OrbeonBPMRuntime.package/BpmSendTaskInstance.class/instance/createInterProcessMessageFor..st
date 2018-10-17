process execution
createInterProcessMessageFor: aBpmProcessInstance
	"Create an instance of <BpmInterProcessMessage> to sent by the receiver to other bpm process <aBpmProcessInstance>"

	^BpmInterProcessMessage new
		senderAppName: self applicationName;
		senderId: aBpmProcessInstance processId;
		senderProcessName: aBpmProcessInstance processName;
		receiverAppName: definition appName;
		receiverProcessName: definition processName;
		receiverGatewayName: definition gatewayName;
		receiverEventName: definition eventName;
		receiverProcessIdField: definition processIdField;
		receiverIdentificationFields: definition identificationFields;
		yourself