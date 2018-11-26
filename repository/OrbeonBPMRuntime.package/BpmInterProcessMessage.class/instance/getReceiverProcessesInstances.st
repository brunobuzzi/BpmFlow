query
getReceiverProcessesInstances
	"The receive answer a collection of targer processes <BpmProcessInstance> to send the message.
	1- If <receiverProcessId> is NOT <nil> then the process id is taken from a field in the sender process.
	2- If <receiverIdentificationFields> is NOT nil then an AND process search is done with values in <Dictionary> <receiverIdentificationFields>"

	receiverProcessIdField ifNil: [^self getReceiverProcessInstanceFromFields].

	"Get the value of the target process from a field in the sender process"
	receiverProcessId := senderProcess getValueOfProcessField: receiverProcessIdField.

	^self getReceiverProcessFromId