tests
testRoles3
	| task processDefinition |

	processDefinition := self getEmbedded02Process.

	task := processDefinition getScriptNamed: 'script-embedded-02' ifNone: [self assert: false].

	self assert: (task rolesAnySatisfy: [:each | each name = 'administrator']).