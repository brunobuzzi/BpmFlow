other
getFixIssueWorkflow

	^(reader getPackageNamed: 'fix-issue') getWorkflowNamed: 'fix-issue' ifNone: [self assert: false]