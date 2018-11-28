searching
getScriptNamed: aString ifNone: aBlock

	^self getScriptNodes detect: [:each | each getName = aString] ifNone: aBlock