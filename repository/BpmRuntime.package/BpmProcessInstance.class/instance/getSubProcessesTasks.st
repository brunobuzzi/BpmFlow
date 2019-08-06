other
getSubProcessesTasks
	"Answer a collection of all <BpmSubProcessTaskInstance> created by the receiver"

	^subprocesses collect: [:each | each creatorTask]