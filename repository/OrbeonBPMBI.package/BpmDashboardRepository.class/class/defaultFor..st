other
defaultFor: aBpmEnvironment

	^self default at: aBpmEnvironment name ifAbsent: [self default at: aBpmEnvironment put: self new initialize]