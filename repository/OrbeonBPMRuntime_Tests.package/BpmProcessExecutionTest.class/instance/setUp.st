other
setUp

	super setUp.

	self getApplicationManagerClass 
		getAnyApplicationNamed: 'ue' 
		ifNone: [(self getApplicationManagerClass newNamed: 'ue') addToCache].