other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', processName, ' v.', version printString, ']'