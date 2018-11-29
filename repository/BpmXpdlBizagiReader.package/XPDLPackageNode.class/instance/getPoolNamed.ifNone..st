other
getPoolNamed: aString ifNone: aBlock

	^pools at: aString ifAbsent: aBlock