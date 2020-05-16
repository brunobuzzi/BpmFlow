other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', application applicationName, ']'