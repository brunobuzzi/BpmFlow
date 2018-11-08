users
getUserNamed: aString

	^self processExecutionSimulator getUserNamed: aString ifNone: [self assert: false]