get artifacts
getIntermediateEventNamed: aString ifNone: aBlock

	^intermediateEvents at: aString ifAbsent: aBlock