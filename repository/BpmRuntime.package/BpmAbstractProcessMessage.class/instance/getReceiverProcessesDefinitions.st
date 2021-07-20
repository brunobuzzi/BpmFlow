query
getReceiverProcessesDefinitions
	"The receiver answer a collection of <BpmProcessDefinition> named <receiverProcessName> in application named <receiverAppName>"

	^systemRoot getAllProcessesNamed: receiverProcessName in: receiverAppName