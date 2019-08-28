other
getWorkflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Unsupported Elements' ifNone: [self assert: false]