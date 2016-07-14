other
testInOutTransitions2
	| task processDefinition subProc1 |

	processDefinition := self getEmbedded01Process.
	subProc1 := processDefinition getSubProcessTaskNamed: 'embedded 02' ifNone: [self assert: false].
	task := processDefinition getScriptNamed: 'script-embedded-01' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitions last == task inTransitions last).

	self assert: (task outTransitions last == subProc1 inTransitions last).
	self assert: (subProc1 outTransitions last == (processDefinition getEndEventNamed: 'end embedded 01' ifNone: [self assert: false]) inTransitions last).