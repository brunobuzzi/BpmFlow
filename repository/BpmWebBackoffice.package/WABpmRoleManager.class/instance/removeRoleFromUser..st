operations
removeRoleFromUser: aBpmRole

	aBpmRole ungrantUser: selectedUser.

	rolesWithSelectedUserBatchList remove: aBpmRole.

	self closeAllInformationComponents.
	(self getTableNamed: 'RolesOfSelectedUser' ifAbsent: [^self]) 
			information: ('Rol removed !!!' translateFor: self session user)
			color: 'green'.