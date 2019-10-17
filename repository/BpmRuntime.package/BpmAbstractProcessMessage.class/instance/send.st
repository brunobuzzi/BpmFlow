send
send
	"The receiver is sent to the receiver process <aBpmProcessInstance>.
	 If receiver is sent from another <aBpmProcessInstance> in the case of <BpmInterProcessMessage> then the sender process must have a <BpmSendTaskInstance> in order to send the meessage.
	 If the receiver is sent from an external resource in the case of <BpmExternalProcessMessage> then the external resource must have all infor to identify the target process.
	 The receiver must have a <BpmEventBasedGateway>.
	 The gateway must have a transition to <aBpmEventDefinition> with a <BpmMessageComponentDefinition>"

	targetProcesses := self getReceiverProcessesInstances.

	targetProcesses ifEmpty: [^self throwNoProcessesException]. 

	(targetProcesses select: [:each | each isRunning]) do: [:procInstance | | gatewayInstance transitionDefinition transitionInstance eventInstance |
		gatewayInstance := procInstance getRunningGatewayNamed: receiverGatewayName ifNone: [^self throwNoGatewayException].
		transitionDefinition := gatewayInstance getNextTransitionDefinitionForArtifactNamed: receiverEventName ifNone: [^self throwNoEventException].
		"the event instance is created here"
		transitionInstance := procInstance createNewTransition: transitionDefinition from: gatewayInstance.
		eventInstance := transitionInstance endArtifact.
		eventInstance processMessage: self inTarget: procInstance.
	]