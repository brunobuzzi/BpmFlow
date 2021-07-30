users
getUserNamed: aString

	^testRoot getUserNamed: aString ifAbsent: [self assert: false]