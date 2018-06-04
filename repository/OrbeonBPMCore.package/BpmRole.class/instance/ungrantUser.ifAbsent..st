responsibility
ungrantUser: aBpmUser ifAbsent: aBlock
	"The receiver ungrant the user <aBpmUser>. Now <aBpmUser> has NO permissions to perform tasks defined for the receiver"
	| association |

	users removeKey: aBpmUser username ifAbsent: [aBlock value].

	association := BpmRoleUserAssociation newWithRole: self and: aBpmUser.
	association beUngrant.
	usersAssociations add: association.
	aBpmUser addRoleAssociation: association.

	self removeCurrentTaskAssigmentsFor: aBpmUser. "if <aBpmUser> currently has any assigment related to the receiver --> the assigment is untaken from the user"

	^aBpmUser removeRole: self