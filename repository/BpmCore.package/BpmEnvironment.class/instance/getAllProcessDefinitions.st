processes
getAllProcessDefinitions
	"The receiver answer all processes definitions <aBpmProcessDefinition>"

	^applications inject: Set new into: [:all :eachApp | all addAll: eachApp getAllProcessDefinitions. all]