other
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^roles isEmpty and:[self getCurrentAssigmentsInbox isEmpty]