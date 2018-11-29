other
getProcess1Workflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Process 1' ifNone: [self assert: false]