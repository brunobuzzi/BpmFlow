get artifacts
getSubProcessDefinitions
	"Answer a collection with all receiver's subprocesses <BpmProcessDefinition>"

	^self getSubProcessTasks collect: [:each | each subProcessDefinition]