grant
rollbackConfiguration
	"The receiver rollback the configuration.
	1- Unregister the <BpmApplication> <application> in the <BpmEnvironment>
	2- Unregister the <BpmUser> <user> in the <BpmEnvironment>
	3- If the role was created then remove it from global cache
	4- Ungrant the <BpmUser> to the role" 

	isApplicationRegistered ifFalse: [environment unregisterApplication: application ifNone: []].
	isUserRegistered ifFalse: [environment unregisterUser: user].
	
	role := ((roleType = 'F') ifTrue: [self defaultFrontOfficeRoleClass] ifFalse: [self defaultBackOfficeRoleClass]) getRoleNamed: roleName in: application applicationName.
	role isAdmin: isAdmin. 

	roleExist ifFalse: [role removeFromCache].

	isUserGranted ifFalse: [role ungrantUser: user ifAbsent: []]