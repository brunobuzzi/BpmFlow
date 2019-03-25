tests
testCreateSystemDefaultObjects

	BpmSystemInitialization 
		initializeCurrentSystem;
		createSystemDefaultObjects.

	[self assert: self defaultEnvironmentClass getAdminsEnvironment notNil] on: NoEnvironmentException do: [:ex | self assert: false].

	[self assert: self defaultBpmApplicationClass getAdminApplication notNil] on: NoApplicationException do: [:ex | self assert: false].

	[self assert: self defaultBpmUserClass getAdminUser notNil] on: NoUserException do: [:ex | self assert: false].

	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesApplication: self defaultBpmApplicationClass getAdminApplication).
	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: self defaultBpmApplicationClass getAdminUser username).

	self assert: (self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: self defaultBpmApplicationClass getAdminApplication applicationName) notNil.
	self assert: (self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: self defaultBpmApplicationClass getAdminApplication applicationName) isAdmin.

	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: self defaultBpmApplicationClass getAdminApplication applicationName) isGranted: self defaultBpmUserClass getAdminUser).