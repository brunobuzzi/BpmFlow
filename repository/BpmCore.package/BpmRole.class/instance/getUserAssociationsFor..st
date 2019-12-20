user association
getUserAssociationsFor: aBpmUser
	"Answer a collection of <BpmRoleUserAssociations> where the user in the association is identical to <aBpmUser>"

	^usersAssociations select: [:roleUserAssoc | roleUserAssoc user == aBpmUser]