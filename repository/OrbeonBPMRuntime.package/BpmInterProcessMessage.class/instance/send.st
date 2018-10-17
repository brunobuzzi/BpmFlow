send
send
	"NOT IMPLEMENTED YET"
	| targetProcesses |

	targetProcesses := self getReceiverProcessesInstances.

	targetProcesses do: [:procInstance | | eventInstance |
		eventInstance := nil.
		procInstance acceptEvent: eventInstance atGatewayNamed: receiverGatewayName

	]