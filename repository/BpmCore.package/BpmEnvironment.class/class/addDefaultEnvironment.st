cache
addDefaultEnvironment

	self initializeCache.

	^(self newNamed: self adminsEnvironmentName) addToCache.