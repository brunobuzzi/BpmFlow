grant
rollbackConfiguration
	"The receiver rollback the configuration (ungrant the <BpmUser> from the <BpmRole>)" 
	
	role := ((roleType = 'F') ifTrue: [self defaultFrontOfficeRoleClass] ifFalse: [self defaultBackOfficeRoleClass]) getRoleNamed: roleName in: application applicationName.

	isUserGranted ifFalse: [role ungrantUser: user ifAbsent: []].

"It must remove the user from the role only.

If NOT there is a problem here:

    Let say 10 grants are configured (one fail)
    Because there are still 9 valid grants on the system then:

    * Environment can be not removed
    * Application can not be removed
    * Role can not be removed

    Otherwise while removing the object an error will arise."