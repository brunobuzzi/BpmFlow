inbox
getFinishedAssignmentsInboxIn: aBpmEnvironment
	"Answer the <aBpmUserInbox> used to store the finished receiver's assignment <BpmTaskAssignment>"

	^(self getInboxFor: aBpmEnvironment) getFinishedAssignmentsInbox