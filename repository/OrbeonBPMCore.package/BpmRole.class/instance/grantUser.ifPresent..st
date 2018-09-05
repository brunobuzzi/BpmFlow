responsibility
grantUser: aBpmUser ifPresent: aBlock
	"The user <aBpmUser> is granted in the receiver"
	| association |

	(self bpmEnvironment includesUserNamed: aBpmUser username) 
	ifFalse: [^NoSuchUserInEnvironmentException signal: 'User [', aBpmUser username, '] has not access to Environment [', self bpmEnvironment name, ']'].

	(users includesKey: aBpmUser username) ifTrue: [^aBlock value].

	association := BpmRoleUserAssociation newWithRole: self and: aBpmUser.
	usersAssociations add: association.
	aBpmUser addRoleAssociation: association.

	users at: aBpmUser username put: aBpmUser.

	^aBpmUser addRole: self