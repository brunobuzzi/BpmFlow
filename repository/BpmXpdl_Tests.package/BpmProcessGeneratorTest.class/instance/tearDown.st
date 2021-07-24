other
tearDown

	super tearDown.
	self getDefaultEnvironment unregisterApplication: self getDefaultApplication.

	self getDefaultApplication resetDefinitionRegistry.
	(testRoot getRolesInAppName: self defaultApplicationName) do: [:each | each removeFromCache].

	self getDefaultApplication removeFromCache.

	self getDefaultEnvironment removeFromCache.