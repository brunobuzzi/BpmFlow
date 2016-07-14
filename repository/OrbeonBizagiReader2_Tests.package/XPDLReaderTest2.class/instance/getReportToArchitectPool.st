other
getReportToArchitectPool

	^(reader getPackageNamed: 'report-to-architect') getPoolNamed: 'architect-process' ifNone: [self assert: false]