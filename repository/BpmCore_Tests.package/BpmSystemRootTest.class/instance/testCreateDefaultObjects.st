tests
testCreateDefaultObjects

	self assert: (testRoot includesEnvironmentNamed: testRoot adminsEnvironmentName).
	self assert: testRoot getAdminsEnvironment notNil.
	self assert: (testRoot getAdminsEnvironment == (testRoot getEnvironmentNamed: testRoot adminsEnvironmentName ifNone: [])).
	self assert: (testRoot getAdminsEnvironment exceptionCalendarsAsSortedCollection size = 1).

	self assert: testRoot getAdminApplication notNil.
	self assert: testRoot getAdminApplication tasksMatrixAreInitialized.

	self assert: testRoot getAdminUser notNil.

	self assert: testRoot getAdminBackOfficeRole notNil.
	self assert: testRoot getAdminBackOfficeRole isAdmin.
	self assert: testRoot getAdminUser notNil .
	self assert: (testRoot getAdminBackOfficeRole isGranted: testRoot getAdminUser).