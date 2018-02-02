aborted
hasAbortedProcess: procId
	"Answer whether or not the receiver has an aborted process <aBpmProcessInstance> with id <procId>"

	^(GsQuery fromSelectBlock: {:e | e.id = procId} on: abortedProcesses) queryResult notEmpty