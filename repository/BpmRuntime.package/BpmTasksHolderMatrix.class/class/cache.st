Accessing
cache

	cache ifNil: [self initializeCache].

	^cache