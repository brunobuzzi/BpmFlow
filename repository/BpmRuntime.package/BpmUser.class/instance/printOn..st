Accessing
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', self username, ']'