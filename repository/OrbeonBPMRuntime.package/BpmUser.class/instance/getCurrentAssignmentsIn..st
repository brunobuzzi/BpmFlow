inbox
getCurrentAssignmentsIn: aBpmEnvironment
	"Answer receiver's finished assignment <BpmTaskAssignment>"

	^self getCurrentAssignmentsInbox messages select: [:each | each bpmEnvironment == aBpmEnvironment]