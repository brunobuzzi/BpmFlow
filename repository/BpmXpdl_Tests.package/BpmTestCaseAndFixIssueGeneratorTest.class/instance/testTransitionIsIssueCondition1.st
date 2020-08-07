other
testTransitionIsIssueCondition1
	| process transition |

	process := self getTestCaseProcess.

	transition := process getTransitionNamed: 'report-issue' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form result = ''failed'']').


	transition := process getTransitionNamed: 'test-ok' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form result ~= ''failed'']')