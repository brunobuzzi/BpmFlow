process id
getAllTaskAssignmentsWithId: processId isCurrent: aBoolean
	"The receiver answer a collection of current <BpmTaskAssignment> with process id equal to <processId>"

	^aBoolean 
		ifTrue: [self getAllCurrentTaskAssignmentsWithId: processId] 
		ifFalse: [self getAllFinishedTaskAssignmentsWithId: processId]