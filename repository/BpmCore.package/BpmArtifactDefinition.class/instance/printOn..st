other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: ' (', self printOnType, ') [', name asString, ']'.