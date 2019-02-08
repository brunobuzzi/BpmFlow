other
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	(self isInAdminsEnvironment and: [self isAdminUser]) ifTrue: [^false].

	^(self getBpmEnvironments size = 1)
		and: [roles isEmpty 
		and:[self getBpmEnvironments allSatisfy: [:env | (self getInboxFor: env) getCurrentAssignmentsInbox isEmpty]]]