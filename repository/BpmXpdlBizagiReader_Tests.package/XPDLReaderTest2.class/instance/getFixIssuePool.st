other
getFixIssuePool

	^(reader getPackageNamed: 'fix-issue') getPoolNamed: 'fix-issue' ifNone: [self assert: false]