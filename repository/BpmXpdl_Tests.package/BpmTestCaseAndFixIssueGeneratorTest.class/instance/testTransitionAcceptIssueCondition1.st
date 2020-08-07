other
testTransitionAcceptIssueCondition1
	| process transition |

	process := self getTestCaseProcess.

	transition := process getTransitionNamed: 'fix' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form acceptOrReject = ''accept'']').


	transition := process getTransitionNamed: 'reject-issue' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form acceptOrReject = ''reject'']')