query
getReceiverProcessFromId
	"The receiver get the receiver <BpmProcessInstance> from the id <receiverProcessId>"

	"check in all versions of the process"
	self getReceiverProcessesDefinitions do: [:procDefinition |
			(procDefinition getProcessInstanceWith: receiverProcessId ifAbsent: []) 
			ifNotNil: [:procInstance| 
				receiverProcessDefinition := procInstance definition.
				^OrderedCollection with: procInstance]].

	^#()