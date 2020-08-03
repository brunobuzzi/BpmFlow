other
testInOutTransitions4
	| process transition task1 task2 |

	process := self getProcess4Workflow.

	task1 := process getTaskNamed: 'Task 13' ifNone: [self assert: false].
	task2 := process getTaskNamed: 'Task 14' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: start t13' ifNone: [self assert: false].
	self assert: (process startNode outTransitionsLast == transition).
	self assert: (task1 inTransitions last == transition).

	transition := process getTransitionNamed: 'tr: t13 t14' ifNone: [self assert: false].
	self assert: (task1 outTransitionsFirst == transition).
	self assert: (task2 inTransitions first == transition).

	transition := process getTransitionNamed: 'tr: t13 end1' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).
	self assert: (process endNodesLast inTransitions last == transition).

	transition := process getTransitionNamed: 'tr: t14 end2' ifNone: [self assert: false].
	self assert: (task2 outTransitionsLast == transition).
	self assert: (process endNodesFirst inTransitions last == transition).