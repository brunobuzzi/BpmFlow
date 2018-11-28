searching
getSubprocessNamed: aString ifNone: aBlock

	^self getSubProcessNodes detect: [:each | each getName = aString] ifNone: aBlock