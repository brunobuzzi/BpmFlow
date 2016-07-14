test proc 3 conditions
testTransitionCreateWorkaroundConditions
	| process transition |

	process := self getReportToArchitectWorkflow.

	transition := process transitions detect: [:each | each endNode == (process getTaskNamed: 'report-workaround' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form hasSolution = ''no'']')