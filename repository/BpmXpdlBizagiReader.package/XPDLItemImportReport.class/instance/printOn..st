other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '(', code printString, ')[', title, ' - ', description, ']'