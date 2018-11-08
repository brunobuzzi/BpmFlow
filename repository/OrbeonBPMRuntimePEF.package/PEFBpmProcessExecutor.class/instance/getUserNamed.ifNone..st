users
getUserNamed: aString ifNone: aBlock

	^users at: aString ifAbsent: aBlock