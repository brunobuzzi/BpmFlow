other
testInOutTransitions
	| process task1 |

	process := self getProcess1Workflow.

	task1 := process getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (process startNode outTransitions last == task1 inTransitions last).

	self assert: (process endNodes asArray last inTransitions last == task1 outTransitions last).