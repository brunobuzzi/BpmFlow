test proc 1 conditions
testTransitionReportIssueConditions
	| process transition |

	process := self getTestCaseWorkflow.
	transition := process transitionsDetect: [:each | each endNodeIsIdenticalTo:  (process getTaskNamed: 'analyze-issue-report' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form result = ''failed'']')