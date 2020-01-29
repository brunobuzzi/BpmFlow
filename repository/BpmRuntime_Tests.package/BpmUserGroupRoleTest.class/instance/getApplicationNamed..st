query
getApplicationNamed: aString

	^applications at: aString ifAbsent: [self assert: false]