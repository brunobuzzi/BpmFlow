tests
testInOutTransitions3
	| task processDefinition |

	processDefinition := self getEmbeddedSubProcess.

	task := processDefinition getScriptNamed: 'script-embedded' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitionsLast == task inTransitionsLast).

	self assert: (task outTransitionsLast == (processDefinition getEndEventNamed: 'end-embedded' ifNone: [self assert: false]) inTransitionsLast).