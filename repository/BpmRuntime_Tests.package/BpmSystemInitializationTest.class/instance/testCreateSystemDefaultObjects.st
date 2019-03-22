tests
testCreateSystemDefaultObjects

	BpmSystemInitialization 
		initializeCurrentSystem;
		createSystemDefaultObjects.

	[self assert: self defaultEnvironmentClass getAdminsEnvironment notNil] on: NoEnvironmentException do: [:ex | self assert: false].

	[self assert: self getBpmApplicationClass getAdminApplication notNil] on: NoApplicationException do: [:ex | self assert: false].

	[self assert: self defaultBpmUserClass getAdminUser notNil] on: NoUserException do: [:ex | self assert: false].

	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesApplication: self getBpmApplicationClass getAdminApplication).
	self assert: (self defaultEnvironmentClass getAdminsEnvironment includesUserNamed: self defaultBpmUserClass getAdminUser username).

	self assert: (BpmBackofficeRole getRoleNamed: 'admin' in: self getBpmApplicationClass getAdminApplication applicationName) notNil.
	self assert: (BpmBackofficeRole getRoleNamed: 'admin' in: self getBpmApplicationClass getAdminApplication applicationName) isAdmin.

	self assert: ((BpmBackofficeRole getRoleNamed: 'admin' in: self getBpmApplicationClass getAdminApplication applicationName) isGranted: self defaultBpmUserClass getAdminUser).