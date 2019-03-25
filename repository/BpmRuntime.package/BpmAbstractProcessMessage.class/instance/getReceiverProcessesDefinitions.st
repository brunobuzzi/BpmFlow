query
getReceiverProcessesDefinitions
	"The receiver answer a collection of <BpmProcessDefinition> named <receiverProcessName> in application named <receiverAppName>"

	^self defaultProcessDefinitionClass getAllProcessesNamed: receiverProcessName in: receiverAppName