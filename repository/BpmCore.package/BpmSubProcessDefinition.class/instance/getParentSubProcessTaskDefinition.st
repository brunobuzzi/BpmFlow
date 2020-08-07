other
getParentSubProcessTaskDefinition
	"Answer a <aBpmSubProcessTaskDefinition> that created the receiver"

	^parentProcess subProcessTasksDetect: [:each | each subProcessDefinition == self]