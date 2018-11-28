other
testOutTransitions
	| process transition task1 gateway |

	process := self getProcess1Workflow.
	transition := process getTransitionNamed: 'tr1' ifNone: [self assert: false].
	self assert: (process startNode outTransitions last == transition).

	task1 := process getTaskNamed: 'Task 1' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr2' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	task1 := process getTaskNamed: 'Task 2' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr3' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	gateway := process getGatewayNamed: 'important' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr4' ifNone: [self assert: false].
	self assert: (gateway outTransitions second == transition).

	gateway := process getGatewayNamed: 'important' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr6' ifNone: [self assert: false].
	self assert: (gateway outTransitions last == transition).

	gateway := process getGatewayNamed: 'important' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr7' ifNone: [self assert: false].
	self assert: (gateway outTransitions first == transition).

	task1 := process getTaskNamed: 'Task 4' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr5' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	task1 := process getTaskNamed: 'Task 3' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr8' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	task1 := process getTaskNamed: 'Task 5' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr9' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	task1 := process getTaskNamed: 'Task 6' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr10' ifNone: [self assert: false].
	self assert: (task1 outTransitions last == transition).

	gateway := process getGatewayNamed: 'define' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr11' ifNone: [self assert: false].
	self assert: (gateway outTransitions first == transition).

	gateway := process getGatewayNamed: 'define' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr12' ifNone: [self assert: false].
	self assert: (gateway outTransitions last == transition).