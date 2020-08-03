other
testInOutTransitions2
	| process task1 subProc |

	process := self getLevel1_EmbeddedWorkflow.

	task1 := process getScriptNamed: 'script-embedded-01' ifNone: [self assert: false].
	subProc := process getSubprocessNamed: 'embedded 02' ifNone: [self assert: false].

	self assert: (process startNode outTransitionsLast == task1 inTransitionsLast).

	self assert: (task1 outTransitionsLast == subProc inTransitionsLast).

	self assert: (subProc outTransitionsLast == process endNodesLast inTransitionsLast).