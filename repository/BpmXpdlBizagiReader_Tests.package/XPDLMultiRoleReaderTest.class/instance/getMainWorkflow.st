other
getMainWorkflow

	^self getMainProcessXpdlPackage getWorkflowNamed: 'multi-role' ifNone: [self assert: false]