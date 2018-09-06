inbox
getReleasedAssignmentsIn: aBpmEnvironment
	"Answer receiver's released assignment <BpmTaskAssignment>"

	^self getReleasedAssignmentsInbox messages select: [:each | each bpmEnvironment == aBpmEnvironment]