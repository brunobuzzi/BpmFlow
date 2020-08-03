other
testInOutTransitions
	| process task1 subProc |

	process := self getMainWorkflow.

	task1 := process getScriptNamed: 'script' ifNone: [self assert: false].
	subProc := process getSubprocessNamed: 'embedded 01' ifNone: [self assert: false].

	self assert: (process startNodeOutTransitionsLast == task1 inTransitionsLast).

	self assert: (task1 outTransitionsLast == subProc inTransitionsLast).

	self assert: (subProc outTransitionsLast == process endNodesLast inTransitionsLast).