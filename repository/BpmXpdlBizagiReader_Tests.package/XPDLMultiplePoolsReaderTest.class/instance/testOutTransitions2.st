other
testOutTransitions2
	| process transition task1 gateway |

	process := self getProcess2Workflow.
	transition := process getTransitionNamed: 'tr1' ifNone: [self assert: false].
	self assert: (process startNode outTransitionsLast == transition).

	task1 := process getTaskNamed: 'Task 7' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr2' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).

	gateway := process getGatewayNamed: 'do it' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr3' ifNone: [self assert: false].
	self assert: (gateway outTransitionsLast == transition).

	gateway := process getGatewayNamed: 'do it' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr4' ifNone: [self assert: false].
	self assert: (gateway outTransitionsFirst == transition).

	task1 := process getTaskNamed: 'Task 8' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr5' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).

	task1 := process getTaskNamed: 'Task 9' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr6' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).