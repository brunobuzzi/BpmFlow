role association
getRoleAssociationsFor: aBpmRole
	"Answer a collection of <BpmRoleUserAssociations> where the role in the association is identical to <aBpmRole>"

	^rolesAssociation  select: [:roleUserAssoc | roleUserAssoc role == aBpmRole]