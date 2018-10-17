query
getReceiverProcessesDefinitions
	"The receiver answer a collection of <BpmProcessDefinition> named <receiverProcessName> in application named <receiverAppName>"

	^BpmProcessDefinition getAllProcessesNamed: receiverProcessName in: receiverAppName