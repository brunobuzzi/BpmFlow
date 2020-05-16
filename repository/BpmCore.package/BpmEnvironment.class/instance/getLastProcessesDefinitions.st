processes
getLastProcessesDefinitions
	"Answer a collection with all latest processes defitions <aBpmProcessDefinition>"

	^applications inject: Set new into: [:all :eachApp | all addAll: eachApp lastProcessesDefinitions. all]