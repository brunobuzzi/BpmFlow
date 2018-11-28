searching
getTransitionNamed: aString ifNone: aBlock

	^transitions detect: [:each | each getName = aString] ifNone: aBlock