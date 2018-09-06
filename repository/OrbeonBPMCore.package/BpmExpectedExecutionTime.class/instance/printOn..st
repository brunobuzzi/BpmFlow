other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[',value printString, self defaultIdCharacter asString;
				nextPutAll: ', ', warningThreshold printString;
				nextPutAll: ', ', calendar name, ']'.