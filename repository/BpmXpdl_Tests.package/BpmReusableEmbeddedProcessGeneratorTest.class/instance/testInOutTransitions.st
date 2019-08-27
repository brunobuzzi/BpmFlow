other
testInOutTransitions
	| task processDefinition subProc1 subProc2 |

	processDefinition := self getTopProcess.
	subProc1 := processDefinition getSubProcessTaskNamed: 'embedded-sub-proc' ifNone: [self assert: false].
	subProc2 := processDefinition getSubProcessTaskNamed: 'reusabe-sub-proc' ifNone: [self assert: false].
	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitions last == task inTransitions last).

	self assert: (task outTransitions last == subProc1 inTransitions last).
	self assert: (subProc1 outTransitions last == subProc2 inTransitions last).
	self assert: (subProc2 outTransitions last == (processDefinition getEndEventNamed: 'end' ifNone: [self assert: false]) inTransitions last).