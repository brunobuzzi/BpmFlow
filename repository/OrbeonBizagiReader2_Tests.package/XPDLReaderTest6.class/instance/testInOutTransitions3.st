other
testInOutTransitions3
	| process task1 |

	process := self getLevel2_EmbeddedWorkflow.

	task1 := process getScriptNamed: 'script-embedded-02' ifNone: [self assert: false].

	self assert: (process startNode outTransitions last == task1 inTransitions last).

	self assert: (task1 outTransitions last == process endNodes asArray last inTransitions last).