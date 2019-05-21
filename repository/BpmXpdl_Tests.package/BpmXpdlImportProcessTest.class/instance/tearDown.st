other
tearDown

	super tearDown.

	self getDefaultEnvironment unregisterApplication: self getDefaultApplication.

	self getDefaultApplication removeFromCache.

	self getDefaultEnvironment removeFromCache.