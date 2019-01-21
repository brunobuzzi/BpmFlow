other
testAdminUserInAdminsEnvironment

	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: BpmUser getAdminUser username)