test
testAccessToEnvironmentManager
	"Test the method BpmUser>>hasAccessToEnvironmentManager. 
	Answer <true> only for users that are: backoffice and admin users and also belong to 'admins' <BpmEnvironment>.
	The user with access to environment manager can assign users and applications to different environments"
	| newUser adminRole env1 |

	self assert: testRoot getAdminUser hasAccessToEnvironmentManager.

	env1 := testRoot getExistingEnvironmentOrCreateNewNamed: 'env1'.
	newUser := testRoot getExistingOrNewUserNamed: 'alfred-admin' password: ' ' forEnvironment: env1.

	self deny: newUser hasAccessToEnvironmentManager.

	testRoot getAdminsEnvironment registerUser: newUser.
	self assert: (testRoot getAdminsEnvironment includesUserNamed: newUser username).
	self deny: newUser hasAccessToEnvironmentManager.

	adminRole := testRoot getAdminApplication backofficeRolesDetect: [:each | each name = 'admin'] ifNone: [self assert: false].
	adminRole grantUser: newUser.
	self assert: newUser hasAccessToEnvironmentManager.

	adminRole ungrantUser: newUser.
	self deny: (adminRole isGranted: newUser).
	self deny: newUser hasAccessToEnvironmentManager.

	testRoot getAdminsEnvironment unregisterUser: newUser.
	self deny: (testRoot getAdminsEnvironment includesUserNamed: newUser username).
	env1 unregisterUser: newUser.
	testRoot unregisterUser: newUser.
	testRoot unregisterEnvironment: env1.
	self deny: (testRoot includesEnvironmentNamed: env1 name).