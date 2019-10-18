tests
testInOutTransitions3
	| task processDefinition |

	processDefinition := self getEmbedded02Process.
	task := processDefinition getScriptNamed: 'script-embedded-02' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitions last == task inTransitions last).

	self assert: (task outTransitions last == (processDefinition getEndEventNamed: 'end embedded 02' ifNone: [self assert: false]) inTransitions last).