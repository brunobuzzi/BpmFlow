other
getMainWorkflow

	^self getMainProcessXpdlPackage getWorkflowNamed: 'multi-embedded' ifNone: [self assert: false]