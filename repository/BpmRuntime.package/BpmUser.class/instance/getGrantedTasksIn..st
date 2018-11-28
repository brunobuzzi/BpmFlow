processes
getGrantedTasksIn: aBpmEnviroment
	"Answer a collection of task <BpmAbstractTaskDefinition> granted to the receiver"

	^(self getGrantedArtifactsIn: aBpmEnviroment) select: [:each | each isTaskDefinition]