other
testInOutTransitions1
	| process transition task1 task2 |

	process := self getProcess1Workflow.

	task1 := process getTaskNamed: 'Task 1' ifNone: [self assert: false].
	task2 := process getTaskNamed: 'Task 2' ifNone: [self assert: false].
	transition := process getTransitionNamed: 'tr: start t1' ifNone: [self assert: false].
	self assert: (process startNode outTransitionsLast == transition).
	self assert: (task1 inTransitionsLast == transition).

	transition := process getTransitionNamed: 'tr: t1 t2' ifNone: [self assert: false].
	self assert: (task1 outTransitionsFirst == transition).
	self assert: (task2 inTransitionsFirst == transition).

	transition := process getTransitionNamed: 'tr: t1 end1' ifNone: [self assert: false].
	self assert: (task1 outTransitionsLast == transition).
	self assert: (process endNodesLast inTransitionsLast == transition).

	transition := process getTransitionNamed: 'tr: t2 end2' ifNone: [self assert: false].
	self assert: (task2 outTransitionsLast == transition).
	self assert: (process endNodesFirst inTransitionsFirst == transition).