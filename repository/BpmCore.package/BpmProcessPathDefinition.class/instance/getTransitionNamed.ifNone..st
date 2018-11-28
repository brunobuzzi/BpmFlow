get artifacts
getTransitionNamed: aString ifNone: aBlock

	^transitions detect: [:each | each name = aString] ifNone: aBlock