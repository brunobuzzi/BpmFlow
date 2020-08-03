tests
testInOutTransitions2
	| task processDefinition |

	processDefinition := self getReusableSubProcess.

	task := processDefinition getScriptNamed: 'script-reusable' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitionsLast == task inTransitionsLast).

	self assert: (task outTransitionsLast == (processDefinition getEndEventNamed: 'end-reusable' ifNone: [self assert: false]) inTransitionsLast).