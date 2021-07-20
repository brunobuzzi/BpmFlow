process execution
createInterProcessMessageFor: aBpmProcessInstance
	"Create an instance of <BpmInterProcessMessage> to sent by the receiver to other bpm process <aBpmProcessInstance>"

	^message := (BpmInterProcessMessage newOn: self systemRoot)
							senderProcess: aBpmProcessInstance;
							parentTask: self; 
							receiverAppName: definition appName;
							receiverProcessName: definition processName;
							receiverGatewayName: definition gatewayName;
							receiverEventName: definition eventName;
							receiverProcessIdField: definition processIdField;
							yourself