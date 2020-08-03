tests
testInOutTransitions2
	| task processDefinition subProc1 |

	processDefinition := self getEmbedded01Process.
	subProc1 := processDefinition getSubProcessTaskNamed: 'embedded 02' ifNone: [self assert: false].
	task := processDefinition getScriptNamed: 'script-embedded-01' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitionsLast == task inTransitionsLast).

	self assert: (task outTransitionsLast == subProc1 inTransitionsLast).
	self assert: (subProc1 outTransitionsLast == (processDefinition getEndEventNamed: 'end embedded 01' ifNone: [self assert: false]) inTransitionsLast).