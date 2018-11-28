other
testInOutTransitions
	| task processDefinition subProc1 |

	processDefinition := self getTopProcess.
	subProc1 := processDefinition getSubProcessTaskNamed: 'embedded 01' ifNone: [self assert: false].
	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitions last == task inTransitions last).

	self assert: (task outTransitions last == subProc1 inTransitions last).
	self assert: (subProc1 outTransitions last == (processDefinition getEndEventNamed: 'end' ifNone: [self assert: false]) inTransitions last).