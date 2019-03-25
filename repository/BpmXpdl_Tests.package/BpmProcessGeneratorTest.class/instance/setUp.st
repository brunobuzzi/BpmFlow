other
setUp

	super setUp.

	self defaultApplicationManagerClass 
		getAnyApplicationNamed: 'ue' 
		ifNone: [(self defaultApplicationManagerClass newNamed: 'ue') addToCache].