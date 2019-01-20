other
addDefaultEnvironment

	self initializeCache.

	^(self newNamed: self adminEnvironmentName) addToCache.