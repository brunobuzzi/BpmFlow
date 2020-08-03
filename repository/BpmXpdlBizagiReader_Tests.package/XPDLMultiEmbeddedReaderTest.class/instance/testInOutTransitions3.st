other
testInOutTransitions3
	| process task1 |

	process := self getLevel2_EmbeddedWorkflow.

	task1 := process getScriptNamed: 'script-embedded-02' ifNone: [self assert: false].

	self assert: (process startNodeOutTransitionsLast == task1 inTransitionsLast).

	self assert: (task1 outTransitionsLast == process endNodesLast inTransitionsLast).