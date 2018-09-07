inbox
getFinishedAssignmentsIn: aBpmEnvironment
	"Answer receiver's finished assignment <BpmTaskAssignment>"

	^self filterObjectCollection: self getFinishedAssignmentsInbox messages by: aBpmEnvironment