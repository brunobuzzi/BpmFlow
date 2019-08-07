other
setUp

	super setUp.
 
	self defaultApplicationManagerClass 
		getAnyApplicationNamed: self defaultApplicationName
		ifNone: [(self defaultApplicationManagerClass newNamed: self defaultApplicationName) addToCache].