process id
getFinishedTaskAssignmentsWithId: processId
	"The receiver answer a collection of finished <BpmTaskAssignment> with process id equal to <processId>"

	^(user getAllFinishedTaskAssignmentsWithId: processId in: bpmEnvironment) select: [:each | each bpmEnvironmentName = bpmEnvironment name].