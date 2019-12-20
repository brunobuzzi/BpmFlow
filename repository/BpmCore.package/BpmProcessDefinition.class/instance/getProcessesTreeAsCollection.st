running
getProcessesTreeAsCollection
	"Answer a collection with all process in the tree process structure (parentProcesses and subprocesses)"

	^self getProcessTree: OrderedCollection new