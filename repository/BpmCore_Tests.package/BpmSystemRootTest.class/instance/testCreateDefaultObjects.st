tests
testCreateDefaultObjects

	testRoot createDefaultObjects.

	self assert: (testRoot includesEnvironmentNamed: testRoot adminsEnvironmentName).