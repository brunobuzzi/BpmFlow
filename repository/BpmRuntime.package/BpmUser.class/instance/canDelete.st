other
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	(self isInAdminsEnvironment and: [self username asLowercase = self class adminUserName asLowercase]) ifTrue: [^false].

	^self getBpmEnvironments isEmpty and: [roles isEmpty and:[self getBpmEnvironments allSatisfy: [:env | (self getInboxFor: env) getCurrentAssignmentsInbox isEmpty]]]