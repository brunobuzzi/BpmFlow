aborted
getAbortedProcessWith: processInstanceId 
	"The receiver search for <aBpmProcessInstance> with id <processInstanceId>"

	^((GsQuery fromString: ('each.id = processInstanceId') on: abortedProcesses) 
			bind: 'processInstanceId' to: processInstanceId; 
			queryResult) asOrderedCollection