bpm processes
getAbortedProcessWith: processInstanceId in: aBpmEnvironment
	"The receiver answer a collection with all aborted processes"

	^(self getAllAbortedProcessesIn: aBpmEnvironment) do: [:eachProcDef | 
		(eachProcDef getAbortedProcessWith: processInstanceId) ifNotEmpty: [:coll | ^coll] 
	].