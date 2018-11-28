inbox
getReleasedAssignmentsInboxIn: aBpmEnvironment
	"Answer the <aBpmUserInbox> used to store the released receiver's assignment <BpmTaskAssignment>"

	^(self getInboxFor: aBpmEnvironment) getReleasedAssignmentsInbox