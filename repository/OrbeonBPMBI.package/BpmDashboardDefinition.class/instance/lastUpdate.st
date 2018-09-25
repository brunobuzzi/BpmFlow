dashboard generation
lastUpdate

	items isEmpty ifTrue: [^TimeStamp fromString: '01/01/1970'].

	^items last lastUpdate