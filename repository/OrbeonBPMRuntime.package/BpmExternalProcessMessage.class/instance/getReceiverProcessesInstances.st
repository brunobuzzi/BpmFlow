other
getReceiverProcessesInstances
	"The receive answer a collection of targer processes <BpmProcessInstance> to send the message.
	1- If <receiverProcessId> is NOT <nil> then the process id it given by the default (the REST service must provide the <receiverProcessId>).
	2- If <receiverIdentificationFields> is NOT nil then an AND process search is done with values in <Dictionary> <receiverIdentificationFields>"

	receiverProcessId ifNil: [^self getReceiverProcessInstanceFromFields].

	^self getReceiverProcessFromId