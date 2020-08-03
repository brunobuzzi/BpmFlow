test proc 3 inout transitions
testInTransitions3
	| process transition task1 gateway |

	process := self getReportToArchitectWorkflow.

	task1 := process getTaskNamed: 'analyze-developer-report' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'start-dev-analysis' ifNone: [self assert: false].
	self assert: (task1 inTransitionsLast == transition).

	gateway := process getGatewayNamed: 'has-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'evaluate-a-solution' ifNone: [self assert: false].
	self assert: (gateway inTransitionsLast == transition).

	task1 := process getTaskNamed: 'report-workaround' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-workaround' ifNone: [self assert: false].
	self assert: (task1 inTransitionsLast == transition).

	task1 := process getTaskNamed: 'report-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-solution' ifNone: [self assert: false].
	self assert: (task1 inTransitionsLast == transition).

	task1 := process getEndNodeNamed: 'end' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'end-solution' ifNone: [self assert: false].
	self assert: (task1 inTransitionsFirst == transition).

	task1 := process getEndNodeNamed: 'end' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'end-workaround' ifNone: [self assert: false].
	self assert: (task1 inTransitionsLast == transition).