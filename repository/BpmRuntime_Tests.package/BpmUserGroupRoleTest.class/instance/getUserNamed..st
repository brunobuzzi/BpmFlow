other
getUserNamed: aString

	^users at: aString ifAbsent: [self assert: false]