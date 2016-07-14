other
getProcess1Workflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Process with Scripts' ifNone: [self assert: false]