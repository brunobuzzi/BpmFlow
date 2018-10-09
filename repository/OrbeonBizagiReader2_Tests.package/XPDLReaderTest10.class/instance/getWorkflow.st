other
getWorkflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'Event Based Gateway' ifNone: [self assert: false]