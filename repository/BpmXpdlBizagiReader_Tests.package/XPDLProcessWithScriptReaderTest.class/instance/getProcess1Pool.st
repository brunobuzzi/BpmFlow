other
getProcess1Pool

	^(reader getPackageNamed: 'Diagram 1') getPoolNamed: 'Process with Scripts' ifNone: [self assert: false]