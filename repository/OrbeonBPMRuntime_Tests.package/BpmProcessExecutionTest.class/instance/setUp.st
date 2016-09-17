other
setUp

	super setUp.

	self getOrbeonApplicationClass 
		getAnyApplicationNamed: 'ue' 
		ifNone: [(self getOrbeonApplicationClass newNamed: 'ue') addToCache].