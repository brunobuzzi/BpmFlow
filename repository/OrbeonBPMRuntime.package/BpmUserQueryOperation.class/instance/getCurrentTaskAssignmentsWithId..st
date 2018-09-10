process id
getCurrentTaskAssignmentsWithId: processId
	"The receiver answer a collection of current <BpmTaskAssignment> with process id equal to <processId>"

	^user getMyTaskAssignmentsWithId: processId in: bpmEnvironment