other
canBeRemovedFrom: aBpmEnvironment
	"Answer whether or not the receiver can be remove from <aBpmEnvironment>"

	(self isAdminUser and: [aBpmEnvironment isAdminsEnvironment]) ifTrue: [^false].

	^(self rolesIn: aBpmEnvironment) isEmpty and: [(self getInboxFor: aBpmEnvironment) getCurrentAssignmentsInbox isEmpty]