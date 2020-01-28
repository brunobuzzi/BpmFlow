roles
removeFromUserGroupsWith: aBpmRole
	"The receiver is remove from all user groups with role <aBpmRole>"

	(userGroups select: [:each | each includesRole: aBpmRole]) do: [:each | each unregisterUser: self]