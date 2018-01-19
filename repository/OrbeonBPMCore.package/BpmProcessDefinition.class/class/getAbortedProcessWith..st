aborted
getAbortedProcessWith: processInstanceId
	"The receiver answer a collection with all aborted processes"

	^self getAllAbortedProcesses do: [:eachProcDef | 
		(eachProcDef getAbortedProcessWith: processInstanceId) ifNotEmpty: [:coll | ^coll] 
	].