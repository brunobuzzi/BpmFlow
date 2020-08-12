test proc 3 conditions
testTransitionCreateWorkaroundConditions
	| process transition |

	process := self getReportToArchitectWorkflow.

	transition := process transitionsDetect: [:each | each endNodeIsIdenticalTo:  (process getTaskNamed: 'report-workaround' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form hasSolution = ''no'']')