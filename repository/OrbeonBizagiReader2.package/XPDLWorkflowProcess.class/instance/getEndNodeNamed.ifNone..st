searching
getEndNodeNamed: aString ifNone: aBlock

	^endNodes detect: [:each | each getName = aString] ifNone: aBlock