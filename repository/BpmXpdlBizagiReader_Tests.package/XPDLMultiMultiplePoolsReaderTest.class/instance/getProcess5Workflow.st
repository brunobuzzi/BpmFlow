other
getProcess5Workflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Process 5' ifNone: [self assert: false]