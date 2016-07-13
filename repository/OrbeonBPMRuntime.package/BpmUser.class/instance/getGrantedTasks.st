processes
getGrantedTasks
	"Answer a collection of task <BpmAbstractTaskDefinition> granted to the receiver"

	^self getGrantedArtifacts select: [:each | each isTaskDefinition]