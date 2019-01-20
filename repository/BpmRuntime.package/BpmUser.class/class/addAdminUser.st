cache
addAdminUser

	^self getExistingOrNewUserNamed: self adminUserName password: 'admin'.