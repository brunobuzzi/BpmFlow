operations
removeUserFromRole: aBpmUser

	selectedObject ungrantUser: aBpmUser.

	rolesWithSelectedUserBatchList remove: aBpmUser.

	self closeAllInformationComponents.
	(self getTableNamed: 'UsersOfSelectedRole' ifAbsent: [^self]) 
			information: ('User removed !!!' translateFor: self session user)
			color: 'green'.