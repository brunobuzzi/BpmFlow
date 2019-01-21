other
testAdminUserInAdminsEnvironment
	"The user 'admins' has to be always assigned to 'admins' <BpmEnvironment>"

	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: BpmUser getAdminUser username)