other
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	self isAdminUser ifTrue: [ImproperBpmOperationException signal: '[admin] user can no be removed' ].

	^self getBpmEnvironments isEmpty and: [roles isEmpty and:[self getBpmEnvironments allSatisfy: [:env | (self getInboxFor: env) getCurrentAssignmentsInbox isEmpty]]]