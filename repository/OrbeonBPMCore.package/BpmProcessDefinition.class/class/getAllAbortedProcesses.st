aborted
getAllAbortedProcesses
	"The receiver answer a collection with all aborted processes"

	^self getAllProcessDefinition inject: OrderedCollection new into:  [:all :each | all addAll: each abortedProcesses. all]