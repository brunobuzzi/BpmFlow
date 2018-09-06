inbox
getFinishedAssignmentsIn: aBpmEnvironment
	"Answer receiver's finished assignment <BpmTaskAssignment>"

	^self getFinishedAssignmentsInbox messages select: [:each | each bpmEnvironment == aBpmEnvironment]