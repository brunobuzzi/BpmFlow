processes
getAllProcessInstances
	"The receiver answer all processes instances <aBpmProcessInstance>"

	^applications inject: Set new into: [:all :eachApp | all addAll: eachApp getAllProcessInstances. all]