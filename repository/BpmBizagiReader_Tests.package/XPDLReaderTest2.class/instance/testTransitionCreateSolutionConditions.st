test proc 3 conditions
testTransitionCreateSolutionConditions
	| process transition |

	process := self getReportToArchitectWorkflow.

	transition := process transitions detect: [:each | each endNode == (process getTaskNamed: 'report-solution' ifNone: [self assert: false])].

	self assert: (transition startCondition = '[:form | form hasSolution = ''yes'']')