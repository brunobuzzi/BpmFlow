test proc 2 conditions
testTransitionNoFixReportConditions
	| process transition |

	process := self getFixIssueWorkflow.
	transition := process transitionsDetect: [:each | each endNodeIsIdenticalTo:  (process getSubprocessNamed: 'report-to-architect' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form developerCanFix = ''no'']')