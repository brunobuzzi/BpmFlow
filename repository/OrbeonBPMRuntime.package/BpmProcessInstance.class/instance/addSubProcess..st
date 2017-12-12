execution
addSubProcess: aBpmSubProcessInstance
	"The receiver add the subprocess <aBpmSubProcessInstance> to it's sub process collection. Set the receiver as the parent process of the process argument <aBpmSubProcessInstance>"

	aBpmSubProcessInstance parentProcess: self.

	^subprocesses add: aBpmSubProcessInstance