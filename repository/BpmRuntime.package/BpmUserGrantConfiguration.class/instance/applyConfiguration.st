other
applyConfiguration

	environment registerUser: user ifPresent: [].
	environment registerApplication: application ifPresent: [] ifTaken: [InvalidCsvConfigurationException signal: 'The Application is already in other Environment'].

	environment addToCache.
	application addToCache.
	
	role := ((roleType = 'F') ifTrue: [self defaultFrontOfficeRoleClass] ifFalse: [self defaultBackOfficeRoleClass]) createNewOrGetExisting: roleName in: application applicationName.
	role isAdmin: roleIsAdmin. 
	role addToCacheInAppName: self applicationName.

	role grantUser: user