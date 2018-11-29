searching
getLaneNamed: aString ifNone: aBlock

	^lanes detect: [:each | each getName = aString] ifNone: aBlock