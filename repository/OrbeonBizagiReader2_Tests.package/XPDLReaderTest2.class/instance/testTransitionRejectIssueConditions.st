test proc 1 conditions
testTransitionRejectIssueConditions
	| process transition |

	process := self getTestCaseWorkflow.
	transition := process transitions detect: [:each | (each endNode == (process getEndNodeNamed: 'end' ifNone: [self assert: false]))
		and: [each startNode isGatewayNode]
	].

	self assert: (transition startCondition = '[:form | form acceptOrReject = ''reject'']')