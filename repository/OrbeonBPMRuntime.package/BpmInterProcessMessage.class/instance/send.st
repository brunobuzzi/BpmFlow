send
send
	"NOT IMPLEMENTED YET"
	| targetProcesses |

	targetProcesses := self getReceiverProcessesInstances.

	targetProcesses do: [:procInstance | | gatewayInstance transitionDefinition transitionInstance eventInstance |
		gatewayInstance := procInstance getRunningGatewayNamed: receiverGatewayName.
		transitionDefinition := gatewayInstance getNextTransitionDefinitionForArtifactNamed: receiverEventName ifNone: [].
		"the event instance is created here"
		transitionInstance := procInstance createNewTransition: transitionDefinition from: gatewayInstance.
		eventInstance := transitionInstance endArtifact.
		eventInstance receiveMessage: self.
	]