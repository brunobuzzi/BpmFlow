test
testAccessToEnvironmentManager
	"Test the method BpmUser>>hasAccessToEnvironmentManager. 
	Answer <true> only for users that are: backoffice and admin users and also belong to 'admins' <BpmEnvironment>.
	The user with access to environment manager can assign users and applications to different environments"
	| newUser adminRole env1 |

	self assert: self defaultBpmUserClass getAdminUser hasAccessToEnvironmentManager.

	env1 := (self defaultEnvironmentClass newNamed: 'env1') addToCache.
	newUser := self defaultBpmUserClass getExistingOrNewUserNamed: 'alfred-admin' password: ' ' forEnvironment: env1.

	self deny: newUser hasAccessToEnvironmentManager.

	self defaultEnvironmentClass getAdminsEnvironment registerUser: newUser.
	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: newUser username).
	self deny: newUser hasAccessToEnvironmentManager.

	adminRole := self defaultBpmApplicationClass getAdminApplication backofficeRoles detect: [:each | each name = 'admin'] ifNone: [self assert: false].
	adminRole grantUser: newUser.
	self assert: newUser hasAccessToEnvironmentManager.

	adminRole ungrantUser: newUser.
	self deny: (adminRole isGranted: newUser).
	self deny: newUser hasAccessToEnvironmentManager.

	self defaultEnvironmentClass getAdminsEnvironment unregisterUser: newUser.
	self deny: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: newUser username).
	env1 unregisterUser: newUser.
	newUser removeFromCache.
	env1 removeFromCache.