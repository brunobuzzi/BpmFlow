other
tearDown

	application resetDefinitionRegistry.
	(testRoot getRolesInAppName: self defaultApplicationName) do: [:each | testRoot removeRole: each in: self defaultApplicationName].

	environment unregisterApplication: application.

	testRoot unregisterEnvironment: environment ifAbsent: [self assert: false].

	super tearDown.