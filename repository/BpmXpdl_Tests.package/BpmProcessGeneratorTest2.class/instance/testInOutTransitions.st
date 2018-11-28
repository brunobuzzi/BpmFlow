other
testInOutTransitions
	| task processDefinition |

	processDefinition := self getScriptProcess.

	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitions last == task inTransitions last).

	self assert: ((processDefinition getEndEventNamed: 'end' ifNone: [self assert: false]) inTransitions last == task outTransitions last).