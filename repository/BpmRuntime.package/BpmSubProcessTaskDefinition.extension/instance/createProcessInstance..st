*bpmruntime
createProcessInstance: aBpmUser
	"Create a new process instance based on the receiver if the user <aBpmUser> does not have creation permission throw an exception.
	The new process can be a main process or a subprocess <BpmMainProcessInstance> <BpmSubProcessInstance>"

	^subProcessDefinition createProcessInstance: aBpmUser