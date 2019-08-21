other
testLoop

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'test-case' ifNone: [self assert: false]) loop isStandardLoop).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'test-case' ifNone: [self assert: false]) loop startQuantity = 1).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'test-case' ifNone: [self assert: false]) loop completionQuantity = 5).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'execute-test' ifNone: [self assert: false]) loop isMultiInstanceLoop).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'execute-test' ifNone: [self assert: false]) loop startQuantity = 2).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'execute-test' ifNone: [self assert: false]) loop completionQuantity = 10).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false]) loop isMultiInstanceLoop).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false]) loop startQuantity = 1).

	self assert: 
		((self getTestCaseProcess getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false]) loop completionQuantity = 9).