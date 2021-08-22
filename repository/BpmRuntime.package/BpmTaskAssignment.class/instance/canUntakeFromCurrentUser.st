testing
canUntakeFromCurrentUser
	"Answer wheter or no the receiver can be untaken from the current user"

	^self isTaken and: [self canUnassign and:[self processIsRunning and: [self hasAutomaticTaskAssignation not]]]