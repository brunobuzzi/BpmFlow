searching
getTaskNamed: aString ifNone: aBlock

	^self getTaskNodes detect: [:each | each getName = aString] ifNone: aBlock