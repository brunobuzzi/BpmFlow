tests
testInOutTransitions3
	| task processDefinition |

	processDefinition := self getEmbedded02Process.
	task := processDefinition getScriptNamed: 'script-embedded-02' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitionsLast == task inTransitions last).

	self assert: (task outTransitionsLast == (processDefinition getEndEventNamed: 'end embedded 02' ifNone: [self assert: false]) inTransitions last).