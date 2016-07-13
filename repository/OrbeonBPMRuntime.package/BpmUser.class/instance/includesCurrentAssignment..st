inbox
includesCurrentAssignment: aBpmTaskAssignment
	"Answer whether or not the receiver includes in the current inbox assignment the assignment <aBpmTaskAssignment>"

	^self getCurrentAssigmentsInbox includesEntry: aBpmTaskAssignment