other
testRoles
	| task processDefinition |

	processDefinition := self getScriptProcess.

	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (task roles anySatisfy: [:each | each name = 'manager'])