aborted
getAllAbortedProcessesIn: aBpmEnvironment
	"The receiver answer a collection with all aborted processes"

	^aBpmEnvironment getAllProcessDefinitions inject: OrderedCollection new into:  [:all :each | all addAll: each abortedProcesses. all]