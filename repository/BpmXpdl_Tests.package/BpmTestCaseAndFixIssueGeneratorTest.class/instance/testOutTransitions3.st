test proc 3 inout transitions
testOutTransitions3
	| process transition task1 gateway |

	process := self getArchitectProcess.
	transition := process getTransitionNamed: 'start-dev-analysis' ifNone: [self assert: false].
	self assert: (process startEvent outTransitionsLast == transition).

	task1 := process getTaskNamed: 'analyze-developer-report' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'evaluate-a-solution' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).

	gateway := process getGatewayNamed: 'has-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-workaround' ifNone: [self assert: false].
	self assert: (gateway outTransitionsLast == transition).

	gateway := process getGatewayNamed: 'has-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'create-solution' ifNone: [self assert: false].
	self assert: (gateway outTransitionsFirst == transition).

	task1 := process getTaskNamed: 'report-workaround' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'end-workaround' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).

	task1 := process getTaskNamed: 'report-solution' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'end-solution' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).