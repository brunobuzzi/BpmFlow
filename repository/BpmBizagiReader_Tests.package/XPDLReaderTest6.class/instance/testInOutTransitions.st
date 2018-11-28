other
testInOutTransitions
	| process task1 subProc |

	process := self getMainWorkflow.

	task1 := process getScriptNamed: 'script' ifNone: [self assert: false].
	subProc := process getSubprocessNamed: 'embedded 01' ifNone: [self assert: false].

	self assert: (process startNode outTransitions last == task1 inTransitions last).

	self assert: (task1 outTransitions last == subProc inTransitions last).

	self assert: (subProc outTransitions last == process endNodes asArray last inTransitions last).