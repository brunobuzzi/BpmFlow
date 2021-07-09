test
testAdminUserInAdminsEnvironment
	"The user 'admins' has to be always assigned to 'admins' <BpmEnvironment>"

	self assert: (testRoot getAdminsEnvironment includesUserNamed: testRoot adminUserName)