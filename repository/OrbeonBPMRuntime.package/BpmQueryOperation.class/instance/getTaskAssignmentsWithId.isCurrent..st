process id
getTaskAssignmentsWithId: processId isCurrent: aBoolean
	"The receiver answer a collection of current <BpmTaskAssignment> with process id equal to <processId>"

	^aBoolean 
		ifTrue: [self getCurrentTaskAssignmentsWithId: processId] 
		ifFalse: [self getFinishedTaskAssignmentsWithId: processId]