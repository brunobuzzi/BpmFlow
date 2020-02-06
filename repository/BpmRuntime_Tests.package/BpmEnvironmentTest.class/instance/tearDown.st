other
tearDown

	super tearDown.

	(self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env') removeFromCache.