get artifacts
getTaskNamed: aString ifNone: aBlock

	^tasks at: aString ifAbsent: aBlock