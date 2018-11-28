other
testInTransitions2
	| process transition task1 gateway |

	process := self getProcess2Workflow.

	task1 := process getTaskNamed: 'Task 7' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr1' ifNone: [self assert: false].
	self assert: (task1 inTransitions last == transition).

	gateway := process getGatewayNamed: 'do it' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr2' ifNone: [self assert: false].
	self assert: (gateway inTransitions last == transition).

	task1 := process getEndNodeNamed: 'end 1' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr3' ifNone: [self assert: false].
	self assert: (task1 inTransitions first == transition).

	task1 := process getTaskNamed: 'Task 8' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr4' ifNone: [self assert: false].
	self assert: (task1 inTransitions last == transition).

	task1 := process getTaskNamed: 'Task 9' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr5' ifNone: [self assert: false].
	self assert: (task1 inTransitions last == transition).

	task1 := process getEndNodeNamed: 'end 2' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr6' ifNone: [self assert: false].
	self assert: (task1 inTransitions last == transition).