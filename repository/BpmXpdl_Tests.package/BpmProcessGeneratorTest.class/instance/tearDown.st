other
tearDown

	super tearDown.
	self getDefaultEnvironment unregisterApplication: self getDefaultApplication.

	self getDefaultApplication resetDefinitionRegistry.
	(self defaultApplicationManagerClass getRolesInAppName: self defaultApplicationName) do: [:each | each removeFromCache].

	self getDefaultApplication removeFromCache.

	self getDefaultEnvironment removeFromCache.