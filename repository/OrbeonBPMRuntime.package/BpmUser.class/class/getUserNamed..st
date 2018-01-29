user query
getUserNamed: aString

	^self cache at: aString ifAbsent: [nil]