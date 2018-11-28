test proc 3 inout transitions
testOutTransitions3
	| process transition task1 gateway |

	process := self getReportToArchitectWorkflow.
	transition := process getTransitionNamed: 'start-dev-analysis' ifNone: [self assert: false].
	self assert: (process startNode outTransitions last == transition).

	task1 := process getTaskNamed: 'analyze-developer-report' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'evaluate-a-solution' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	gateway := process getGatewayNamed: 'has-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-workaround' ifNone: [self assert: false].
	self assert: (gateway outTransitions last == transition).

	gateway := process getGatewayNamed: 'has-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-solution' ifNone: [self assert: false].
	self assert: (gateway outTransitions first == transition).

	task1 := process getTaskNamed: 'report-workaround' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'end-workaround' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	task1 := process getTaskNamed: 'report-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'end-solution' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).