responsibility
grantUser: aBpmUser ifPresent: aBlock
	"The user <aBpmUser> is granted in the receiver"
	| association |

	(users includesKey: aBpmUser username) ifTrue: [^aBlock value].

	association := BpmRoleUserAssociation newWithRole: self and: aBpmUser.
	usersAssociations add: association.
	aBpmUser addRoleAssociation: association.

	users at: aBpmUser username put: aBpmUser.

	^aBpmUser addRole: self