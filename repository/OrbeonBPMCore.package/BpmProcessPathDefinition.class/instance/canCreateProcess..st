other
canCreateProcess: aBpmUser
	"Answer whether or not the user <aBpmUser> can create a process instance of the receiver"

	aBpmUser ifNil: [^true]. "a process can be created with anonymous user"

	^aBpmUser isBackofficeUserAndAdmin or: [aBpmUser includesAnyRoleOf: startEvent roles]