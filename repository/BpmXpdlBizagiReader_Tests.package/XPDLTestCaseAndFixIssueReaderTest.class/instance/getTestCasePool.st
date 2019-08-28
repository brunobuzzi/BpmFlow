other
getTestCasePool

	^(reader getPackageNamed: 'test-case') getPoolNamed: 'test-case-process' ifNone: [self assert: false]