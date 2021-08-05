other
tearDown

	super tearDown.
	self getDefaultEnvironment unregisterApplication: self getDefaultApplication.

	self getDefaultApplication resetDefinitionRegistry.
	(testRoot getRolesInAppName: self defaultApplicationName) do: [:each | testRoot removeRole: each in: self defaultApplicationName].


	testRoot unregisterEnvironment: self getDefaultEnvironment ifAbsent: [self assert: false].