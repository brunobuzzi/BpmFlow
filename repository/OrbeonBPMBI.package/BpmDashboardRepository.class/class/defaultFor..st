other
defaultFor: aBpmEnvironment

	^self default at: aBpmEnvironment name ifAbsent: [self default at: aBpmEnvironment name put: self new initialize]