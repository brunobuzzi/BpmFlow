other
testRoles
	| task processDefinition |

	processDefinition := self getScriptProcess.

	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (task rolesAnySatisfy: [:each | each name = 'manager'])