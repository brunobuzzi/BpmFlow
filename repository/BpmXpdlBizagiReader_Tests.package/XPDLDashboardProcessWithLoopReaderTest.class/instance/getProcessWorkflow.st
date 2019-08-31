other
getProcessWorkflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'dashboard-process-with-loop' ifNone: [self assert: false]