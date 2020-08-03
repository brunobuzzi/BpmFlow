other
testInOutTransitions5
	| process transition task1 task2 |

	process := self getProcess5Workflow.

	task1 := process getTaskNamed: 'Task 15' ifNone: [self assert: false].
	task2 := process getTaskNamed: 'Task 16' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: start t15' ifNone: [self assert: false].
	self assert: (process startNode outTransitionsLast == transition).
	self assert: (task1 inTransitions last == transition).

	transition := process getTransitionNamed: 'tr: t15 t16' ifNone: [self assert: false].
	self assert: (task1 outTransitionsFirst == transition).
	self assert: (task2 inTransitions first == transition).

	transition := process getTransitionNamed: 'tr: t16 t17' ifNone: [self assert: false].
	task1 := process getTaskNamed: 'Task 16' ifNone: [self assert: false].
	task2 := process getTaskNamed: 'Task 17' ifNone: [self assert: false].
	self assert: (task1 outTransitionsFirst == transition).
	self assert: (task2 inTransitions first == transition).

	task1 := process getTaskNamed: 'Task 15' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: t15 end1' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).
	self assert: (process endNodesFirst inTransitions last == transition).

	transition := process getTransitionNamed: 'tr: t17 end2' ifNone: [self assert: false].
	self assert: (task2 outTransitionsLast == transition).
	self assert: (process endNodesLast inTransitions last == transition).