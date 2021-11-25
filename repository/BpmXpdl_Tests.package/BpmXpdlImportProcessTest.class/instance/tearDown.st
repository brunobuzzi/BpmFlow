other
tearDown

	super tearDown.

	self getDefaultEnvironment unregisterApplication: self getDefaultApplication  ifNone: [self assert: false].

	testRoot unregisterEnvironment: self getDefaultEnvironment ifAbsent: [self assert: false]