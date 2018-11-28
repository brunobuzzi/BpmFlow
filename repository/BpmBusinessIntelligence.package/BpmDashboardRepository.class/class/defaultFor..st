other
defaultFor: aBpmEnvironment

	^self defaultFor: aBpmEnvironment ifAbsent: [self default at: aBpmEnvironment name put: self new initialize]