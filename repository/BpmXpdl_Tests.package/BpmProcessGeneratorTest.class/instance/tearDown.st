other
tearDown

	super tearDown.

	(self defaultApplicationManagerClass getAnyApplicationNamed: 'ue' ifNone: [^self]) removeFromCache.