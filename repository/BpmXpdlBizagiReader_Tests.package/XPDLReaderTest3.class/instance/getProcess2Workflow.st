other
getProcess2Workflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Process 2' ifNone: [self assert: false]