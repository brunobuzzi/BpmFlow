query
getReceiverProcessesInstances

	receiverProcessId ifNil: [^self getReceiverProcessInstanceFromFields].

	self getReceiverProcessesDefinitions do: [:procDefinition |
			(procDefinition getProcessInstanceWith: receiverProcessId ifAbsent: []) 
			ifNotNil: [:procInstance| 
				receiverProcessDefinition := procInstance definition.
				^OrderedCollection with: procInstance]].

	^#()