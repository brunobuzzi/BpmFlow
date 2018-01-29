other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', user username, '][', count printString, ']'