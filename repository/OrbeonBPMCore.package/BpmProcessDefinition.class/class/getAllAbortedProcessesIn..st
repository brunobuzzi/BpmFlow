aborted
getAllAbortedProcessesIn: aBpmEnvironment
	"The receiver answer a collection with all aborted processes"

	^(self getAllProcessDefinitionIn: aBpmEnvironment) inject: OrderedCollection new into:  [:all :each | all addAll: each abortedProcesses. all]