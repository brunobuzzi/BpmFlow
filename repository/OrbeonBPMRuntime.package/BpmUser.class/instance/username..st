other
username: aString

	centralUser ifNil: [self setCentralUserNamed: aString].

	centralUser username: aString.