other
getProcess1Pool

	^(reader getPackageNamed: 'Diagram 1') getPoolNamed: 'Process 1' ifNone: [self assert: false]