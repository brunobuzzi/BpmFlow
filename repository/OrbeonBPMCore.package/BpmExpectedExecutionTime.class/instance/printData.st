other
printData
	| aStream |

	aStream := PrintStream on: String new.

	aStream nextPutAll: '[',value printString, self defaultIdCharacter asString;
				nextPutAll: ', ', warningThreshold printString;
				nextPutAll: ', ', calendar name, ']'.

	^aStream contents