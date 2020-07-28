test proc 1 conditions
testTransitionFixIssueConditions
	| process transition |

	process := self getTestCaseWorkflow.
	transition := process transitionsDetect: [:each | each endNode == (process getSubprocessNamed: 'fix-issue' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form acceptOrReject = ''accept'']')