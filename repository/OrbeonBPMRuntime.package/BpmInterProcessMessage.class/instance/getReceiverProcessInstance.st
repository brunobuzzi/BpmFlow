other
getReceiverProcessInstance
	| processDefinition |

	processDefinition := self getReceiverProcessDefinition.

	receiverProcessId ifNil: [^self getReceiverProcessInstanceFromQuery].

	^processDefinition getProcessInstanceWith: receiverProcessId ifAbsent: []