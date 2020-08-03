other
testInOutTransitions3
	| process transition task1 task2 |

	process := self getProcess3Workflow.

	task1 := process getTaskNamed: 'Task 9' ifNone: [self assert: false].
	task2 := process getTaskNamed: 'Task 10' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: start t9' ifNone: [self assert: false].
	self assert: (process startNodeOutTransitionsLast == transition).
	self assert: (task1 inTransitionsLast == transition).

	transition := process getTransitionNamed: 'tr: t9 t10' ifNone: [self assert: false].
	self assert: (task1 outTransitionsFirst == transition).
	self assert: (task2 inTransitionsFirst == transition).

	task1 := process getTaskNamed: 'Task 10' ifNone: [self assert: false].
	task2 := process getTaskNamed: 'Task 11' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: t10 t11' ifNone: [self assert: false].
	self assert: (task1 outTransitionsFirst == transition).
	self assert: (task2 inTransitionsFirst == transition).

	task1 := process getTaskNamed: 'Task 11' ifNone: [self assert: false].
	task2 := process getTaskNamed: 'Task 12' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: t11 t12' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).
	self assert: (task2 inTransitionsFirst == transition).

	task1 := process getTaskNamed: 'Task 12' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: t12 end' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).
	self assert: (process endNodesLast inTransitionsLast == transition).