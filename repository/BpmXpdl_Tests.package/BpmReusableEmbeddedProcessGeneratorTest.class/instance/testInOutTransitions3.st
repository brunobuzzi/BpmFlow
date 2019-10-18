tests
testInOutTransitions3
	| task processDefinition |

	processDefinition := self getEmbeddedSubProcess.

	task := processDefinition getScriptNamed: 'script-embedded' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitions last == task inTransitions last).

	self assert: (task outTransitions last == (processDefinition getEndEventNamed: 'end-embedded' ifNone: [self assert: false]) inTransitions last).