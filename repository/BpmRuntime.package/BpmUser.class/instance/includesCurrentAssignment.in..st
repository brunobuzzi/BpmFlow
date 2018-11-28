inbox
includesCurrentAssignment: aBpmTaskAssignment in: aBpmEnvironment
	"Answer whether or not the receiver includes in the current inbox assignment the assignment <aBpmTaskAssignment>"

	^(self getCurrentAssignmentsInboxIn: aBpmEnvironment) includesEntry: aBpmTaskAssignment