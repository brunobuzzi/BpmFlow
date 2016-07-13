other
addSubProcess: aBpmSubProcessDefinition
	"The receiver add the subprocess <aBpmSubProcessDefinition> to it's sub process collection. Set the receiver as the parent process of the process argument <aBpmSubProcessDefinition>"

	aBpmSubProcessDefinition parentProcess: self.

	^subProcesses at: aBpmSubProcessDefinition processName put: aBpmSubProcessDefinition