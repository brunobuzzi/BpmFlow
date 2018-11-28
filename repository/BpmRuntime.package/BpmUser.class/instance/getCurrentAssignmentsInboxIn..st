inbox
getCurrentAssignmentsInboxIn: aBpmEnvironment
	"Answer the <aBpmUserInbox> used to store the current receiver's assignment <BpmTaskAssignment>"

	^(self getInboxFor: aBpmEnvironment) getCurrentAssignmentsInbox