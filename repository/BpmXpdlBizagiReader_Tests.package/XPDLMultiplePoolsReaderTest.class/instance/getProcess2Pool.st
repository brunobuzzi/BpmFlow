other
getProcess2Pool

	^(reader getPackageNamed: 'Diagram 1') getPoolNamed: 'Process 2' ifNone: [self assert: false]