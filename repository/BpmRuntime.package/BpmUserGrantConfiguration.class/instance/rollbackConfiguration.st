grant
rollbackConfiguration
	"The receiver rollback the configuration (ungrant the <BpmUser> from the <BpmRole>)" 
	
	role := ((roleType = 'F') ifTrue: [self defaultFrontOfficeRoleClass] ifFalse: [self defaultBackOfficeRoleClass]) getRoleNamed: roleName in: application applicationName.

	isUserGranted ifFalse: [role ungrantUser: user ifAbsent: []].

"It must remove the user from the role ONLY.

If NOT there is a problem. Case:

    Let say 10 grants are imported (one fail)
    Because there are still 9 valid grants on the system then:

    * Environment can be NOT removed
    * Application can NOT be removed
    * Role can NOT be removed

    Otherwise while removing the object an error will arise."