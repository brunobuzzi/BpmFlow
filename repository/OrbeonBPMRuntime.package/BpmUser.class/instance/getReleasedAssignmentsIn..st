inbox
getReleasedAssignmentsIn: aBpmEnvironment
	"Answer receiver's released assignment <BpmTaskAssignment>"

	^self filterObjectCollection: self getReleasedAssignmentsInbox messages by: aBpmEnvironment