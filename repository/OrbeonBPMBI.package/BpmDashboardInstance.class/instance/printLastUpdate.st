other
printLastUpdate

	creationTime ifNil: [^'N/A'].

	^creationTime printString