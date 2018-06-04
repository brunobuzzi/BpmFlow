responsibility
ungrantUser: aBpmUser
	"The receiver ungrant the user <aBpmUser>. Now <aBpmUser> has NO permissions to perform tasks defined for the receiver"

	^self ungrantUser: aBpmUser ifAbsent: [NoUserInThisRoleException signal: 'The role [', name ,'] does not have the user [', aBpmUser username, ']']