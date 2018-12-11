other
printOn: aStream

	super printOn: aStream.

	aStream 
		nextPut: Character cr;
		nextPut: Character lf.

	aStream nextPutAll: '[', title, ' - ', description, ']'