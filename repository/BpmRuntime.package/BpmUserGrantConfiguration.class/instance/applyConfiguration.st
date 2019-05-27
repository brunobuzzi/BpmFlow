grant
applyConfiguration
	"The receiver apply the configuration into the System.
	1- Register the <BpmUser> in the <BpmEnvironment>
	2- Create the <BpmFrontOfficeRole> and add it to global cache
	3- Grant the <BpmUser> to the role" 

	environment registerUser: user ifPresent: [].
	environment registerApplication: application ifPresent: [] ifTaken: [InvalidCsvConfigurationException signal: 'The Application is already in other Environment'].
	
	role := ((roleType = 'F') ifTrue: [self defaultFrontOfficeRoleClass] ifFalse: [self defaultBackOfficeRoleClass]) createNewOrGetExisting: roleName in: application applicationName.
	role isAdmin: roleIsAdmin. 
	role addToCacheInAppName: self applicationName.

	role grantUser: user ifPresent: [] "if the user already have the grant --> nothing is done"