tests
testRoles2
	| task processDefinition |

	processDefinition := self getReusableSubProcess.

	task := processDefinition getScriptNamed: 'script-reusable' ifNone: [self assert: false].

	self assert: (task roles anySatisfy: [:each | each name = 'administrator']).