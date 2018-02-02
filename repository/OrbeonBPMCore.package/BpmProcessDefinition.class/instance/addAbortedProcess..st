aborted
addAbortedProcess: aBpmProcessInstance
	"The receiver add the process <aBpmProcessInstance> to the aborted process collection"

	self removeProcessInstance: aBpmProcessInstance.

	^abortedProcesses add: aBpmProcessInstance