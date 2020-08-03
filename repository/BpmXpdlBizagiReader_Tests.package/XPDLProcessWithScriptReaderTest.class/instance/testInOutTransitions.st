other
testInOutTransitions
	| process task1 |

	process := self getProcess1Workflow.

	task1 := process getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (process startNode outTransitionsLast == task1 inTransitionsLast).

	self assert: (process endNodesLast inTransitionsLast == task1 outTransitionsLast).