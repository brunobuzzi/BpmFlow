other
getProcess4Workflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Process 4' ifNone: [self assert: false]