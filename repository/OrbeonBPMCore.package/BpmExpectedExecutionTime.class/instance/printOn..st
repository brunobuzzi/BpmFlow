other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[',value printString, self defaultCharacter asString;
				nextPutAll: ', ', warningThreshold printString;
				nextPutAll: ', ', calendar name, ']'.