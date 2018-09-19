other
defaultFor: aBpmEnvironment ifAbsent: aBlock

	^self default at: aBpmEnvironment name ifAbsent: aBlock