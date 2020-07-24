tests
testRoles2
	| task subProc processDefinition |

	processDefinition := self getEmbedded01Process.

	task := processDefinition getScriptNamed: 'script-embedded-01' ifNone: [self assert: false].

	self assert: (task rolesAnySatisfy: [:each | each name = 'administrator']).

	subProc := processDefinition getSubProcessTaskNamed: 'embedded 02' ifNone: [self assert: false].
	self assert: (subProc rolesAnySatisfy: [:each | each name = 'administrator']).