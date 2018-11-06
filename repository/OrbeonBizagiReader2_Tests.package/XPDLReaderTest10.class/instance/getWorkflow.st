other
getWorkflow

	^(reader getPackageNamed: 'Diagram 1') getWorkflowNamed: 'House Purchase with Loan' ifNone: [self assert: false]