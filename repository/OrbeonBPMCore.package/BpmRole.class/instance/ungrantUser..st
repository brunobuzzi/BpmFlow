responsibility
ungrantUser: aBpmUser
	"The receiver ungrant the user <aBpmUser>. Now <aBpmUser> has NO permissions to perform tasks defined for the receiver"

	users removeKey: aBpmUser username ifAbsent: [NoUserInThisRoleException signal: 'The role [', name ,'] does not have the user [', aBpmUser username, ']'].

	self removeCurrentTaskAssigmentsFor: aBpmUser. "if <aBpmUser> currently has any assigment related to the receiver --> the assigment is untaken from the user"

	^aBpmUser removeRole: self