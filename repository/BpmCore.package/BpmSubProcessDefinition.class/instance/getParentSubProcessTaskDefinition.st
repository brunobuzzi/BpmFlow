other
getParentSubProcessTaskDefinition
	"Answer a <aBpmSubProcessTaskDefinition> that created the receiver"

	^parentProcess getSubProcessTasks detect: [:each | each subProcessDefinition == self] ifNone: [nil]