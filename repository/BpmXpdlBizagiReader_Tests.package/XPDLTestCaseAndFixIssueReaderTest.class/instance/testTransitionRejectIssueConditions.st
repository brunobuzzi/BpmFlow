test proc 1 conditions
testTransitionRejectIssueConditions
	| process transition |

	process := self getTestCaseWorkflow.
	transition := process transitionsDetect: [:each | (each endNode == (process getEndNodeNamed: 'end' ifNone: [self assert: false]))
		and: [each startNodeIsGatewayNode]
	].

	self assert: (transition startCondition = '[:form | form acceptOrReject = ''reject'']')