grant
applyConfiguration
	"The receiver apply the configuration into the System.
	1- Register the <BpmApplication> <application> in the <BpmEnvironment>
	2- Register the <BpmUser> <user> in the <BpmEnvironment>
	3- Create or get the existing <BpmFrontOfficeRole> <roleName> and add it to global cache
	4- Grant the <BpmUser> to the role" 
	| roleClass |

	environment registerApplication: application ifPresent: [isApplicationRegistered := true] ifTaken: [InvalidCsvConfigurationException signal: 'The Application is already in other Environment'].
	environment registerUser: user ifPresent: [isUserRegistered := true].
	
	roleClass := (roleType = 'F') ifTrue: [self defaultFrontOfficeRoleClass] ifFalse: [self defaultBackOfficeRoleClass].
	roleExist := (roleClass getRoleNamed: roleName in: application applicationName) ifNil: [false] ifNotNil: [true].

	role := roleClass createNewOrGetExisting: roleName in: application applicationName.
	isAdmin := role isAdmin.
	role isAdmin: roleIsAdmin. 

	role grantUser: user ifPresent: [isUserGranted := true] "if the user already have the grant --> nothing is done"