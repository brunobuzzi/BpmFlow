other
getActivityNamed: aString

	^activities at: aString ifAbsent: [nil]