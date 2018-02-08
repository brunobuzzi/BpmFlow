process id
getAllFinishedTaskAssignmentsWithId: processId
	"The receiver answer a collection of finished <BpmTaskAssignment> with process id equal to <processId>"

	^user getMyFinishedTaskAssignmentsWithId: processId