operations
removeUserFromRole: aBpmUser

	selectedObject ungrantUser: aBpmUser.

	rolesWithSelectedUserBatchList remove: aBpmUser.

	self closeAllInformationComponents.
	(self getTableNamed: 'UsersOfSelectedRole' ifAbsent: [^self]) 
			information: ('User removed !!!' translateFor: self session user)
			color: 'green'.

	(selectedObject usersSize = 0) ifFalse: [^self].

	(self getTableNamed: 'UsersOfSelectedRole' ifAbsent: [^self]) 
		atInformationComponent: 2 
		put: ('Warning this role has no users !!!' translateFor: self session user) 
		withColor: 'red'