other
getUserNamed: aString

	^self cache at: aString ifAbsent: [nil]