cache
resetAll

	self removeAllDefinitions.
	self removeAllFormFieldInstances.

	BpmUser cache do: [:each | each resetAll].
	
	BpmProcessInstance resetAll.

	AbstractApplication initializeCache.

	BpmBackofficeRole initializeCache. "create the default role -admin-"
	(BpmBackofficeRole getRoleNamed: 'admin' in: 'admins') grantUser: (BpmUser getExistingOrNewUserNamed: 'admin' password: 'admin').
	BpmFrontOfficeRole initializeCache.

	self getMatrixManagerClass initializeCache.
	self getFinishedMatrixManagerClass initializeCache.