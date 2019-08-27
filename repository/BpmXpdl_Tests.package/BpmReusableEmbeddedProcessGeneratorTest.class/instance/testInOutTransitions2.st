other
testInOutTransitions2
	| task processDefinition |

	processDefinition := self getReusableSubProcess.

	task := processDefinition getScriptNamed: 'script-reusable' ifNone: [self assert: false].

	self assert: (processDefinition startEvent outTransitions last == task inTransitions last).

	self assert: (task outTransitions last == (processDefinition getEndEventNamed: 'end-reusable' ifNone: [self assert: false]) inTransitions last).