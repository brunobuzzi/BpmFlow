test proc 1 activities
testLoop

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'test-case' ifNone: [self assert: false]) loopType = 'Standard').

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'test-case' ifNone: [self assert: false]) loopCondition = 
			'[:form | form approved = ''false'']').

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'test-case' ifNone: [self assert: false]) getStartQuantity == nil).

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'test-case' ifNone: [self assert: false]) getCompletionQuantity = 5).

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'execute-test' ifNone: [self assert: false]) loopType = 'MultiInstance').

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'execute-test' ifNone: [self assert: false]) loopCondition == nil).

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'execute-test' ifNone: [self assert: false]) getStartQuantity == 2).

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'execute-test' ifNone: [self assert: false]) getCompletionQuantity = 10).

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false]) loopType = 'MultiInstance').

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false]) loopCondition = 
			'[:form | form numberOfLoops]').

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false]) getStartQuantity == nil).

	self assert: 
		((self getTestCaseWorkflow getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false]) getCompletionQuantity = 9).