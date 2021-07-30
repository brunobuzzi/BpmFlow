other
tearDown

	(testRoot getRolesInAppName: self defaultApplicationName) do: [:each | self getDefaultApplication removeRole: each ifAbsent: [self assert: false]].

	self getDefaultApplication resetDefinitionRegistry.

	self getDefaultEnvironment unregisterApplication: self getDefaultApplication.

	testRoot unregisterEnvironment: self getDefaultEnvironment ifAbsent: [self assert: false].

	super tearDown.