operations
modifyUser: user value: aBoolean

	isAddingUser := false.

	aBoolean ifFalse: [^self].

	usersWithSelectedRoleBatchList add: user.

	selectedObject grantUser: user.

	self closeAllInformationComponents.
	(self getTableNamed: 'UsersOfSelectedRole' ifAbsent: [^self]) 
			information: ('User added !!!' translateIn: self session)
			color: 'green'.