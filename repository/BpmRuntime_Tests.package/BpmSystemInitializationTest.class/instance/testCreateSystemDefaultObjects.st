tests
testCreateSystemDefaultObjects

	BpmSystemInitialization initializeCurrentSystem.

	[self assert: self defaultEnvironmentClass getAdminsEnvironment notNil] on: NoEnvironmentException do: [:ex | self assert: false].

	[self assert: self defaultEnvironmentClass getAdminApplication notNil] on: NoApplicationException do: [:ex | self assert: false].

	[self assert: self defaultBpmUserClass getAdminUser notNil] on: NoUserException do: [:ex | self assert: false].

	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesApplication: self defaultEnvironmentClass getAdminApplication).
	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: self defaultBpmUserClass getAdminUser username).

	self assert: (self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: self defaultEnvironmentClass getAdminApplication applicationName) notNil.
	self assert: (self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: self defaultEnvironmentClass getAdminApplication applicationName) isAdmin.
	self assert: (self defaultBpmUserClass getAdminUser isAdminIn: self defaultEnvironmentClass getAdminsEnvironment).

	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: self defaultEnvironmentClass getAdminApplication applicationName) isGranted: self defaultBpmUserClass getAdminUser).