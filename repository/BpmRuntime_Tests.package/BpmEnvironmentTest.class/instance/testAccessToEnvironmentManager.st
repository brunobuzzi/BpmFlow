other
testAccessToEnvironmentManager
	"Test the method BpmUser>>hasAccessToEnvironmentManager. 
	Answer <true> only for users that are: backoffice and admin users and also belong to 'admins' <BpmEnvironment>.
	The user with access to environment manager can assign users and applications to different environments"
	| newUser adminRole |

	self assert: BpmUser getAdminUser hasAccessToEnvironmentManager.

	newUser := BpmUser getExistingOrNewUserNamed: 'alfred'.

	self deny: newUser hasAccessToEnvironmentManager.

	self defaultEnvironmentClass getAdminsEnvironment registerUser: newUser.
	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: newUser username).
	self deny: newUser hasAccessToEnvironmentManager.

	adminRole := (BpmBackofficeRole getRolsIn: self defaultEnvironmentClass getAdminsEnvironment forApplication: self getBpmApplicationClass getAdminApplication) 
						detect: [:each | each name = 'admin'] ifNone: [self assert: false].
	adminRole grantUser: newUser.
	self assert: newUser hasAccessToEnvironmentManager.

	adminRole ungrantUser: newUser.
	self deny: (adminRole isGranted: newUser).
	self deny: newUser hasAccessToEnvironmentManager.

	self defaultEnvironmentClass getAdminsEnvironment unregisterUser: newUser.
	self deny: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: newUser username).
	newUser removeFromCache.