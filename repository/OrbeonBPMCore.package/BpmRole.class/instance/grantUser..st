responsibility
grantUser: aBpmUser
	"The user <aBpmUser> is granted in the receiver"

	^self grantUser: aBpmUser ifPresent: [UserAlreadyInThisRoleException signal: 'The role [', name ,'] already have the user [', aBpmUser username, ']']