other
testInOutTransitions
	| task processDefinition |

	processDefinition := self getScriptProcess.

	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitionsLast == task inTransitionsLast).

	self assert: ((processDefinition getEndEventNamed: 'end' ifNone: [self assert: false]) inTransitionsLast == task outTransitionsLast).