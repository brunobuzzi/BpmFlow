responsibility
grantUser: aBpmUser
	"The user <aBpmUser> is granted in the receiver"
	| association |

	(users includesKey: aBpmUser username) ifTrue: [UserAlreadyInThisRoleException signal: 'The role [', name ,'] already have the user [', aBpmUser username, ']'].

	association := BpmRoleUserAssociation newWithRole: self and: aBpmUser.
	usersAssociations add: association.
	aBpmUser addRoleAssociation: association.

	users at: aBpmUser username put: aBpmUser.

	^aBpmUser addRole: self