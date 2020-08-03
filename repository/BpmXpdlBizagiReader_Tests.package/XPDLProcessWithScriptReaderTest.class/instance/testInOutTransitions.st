other
testInOutTransitions
	| process task1 |

	process := self getProcess1Workflow.

	task1 := process getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (process startNode outTransitionsLast == task1 inTransitions last).

	self assert: (process endNodesLast inTransitions last == task1 outTransitionsLast).