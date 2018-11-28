get artifacts
getEndEventNamed: aString ifNone: aBlock

	^endEvents at: aString ifAbsent: aBlock