test proc 2 conditions
testTransitionCreateReportConditions
	| process transition |

	process := self getFixIssueWorkflow.
	transition := process transitionsDetect: [:each | each endNode == (process getTaskNamed: 'report-fixes' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form developerCanFix = ''yes'']')