inbox
getCurrentAssignmentsIn: aBpmEnvironment
	"Answer receiver's finished assignment <BpmTaskAssignment>"

	^self filterObjectCollection: self getCurrentAssignmentsInbox messages by: aBpmEnvironment