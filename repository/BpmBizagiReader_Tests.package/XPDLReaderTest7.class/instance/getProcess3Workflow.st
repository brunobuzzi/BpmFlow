other
getProcess3Workflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Process 3' ifNone: [self assert: false]