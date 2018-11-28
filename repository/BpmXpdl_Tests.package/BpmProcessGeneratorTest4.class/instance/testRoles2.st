other
testRoles2
	| task subProc processDefinition |

	processDefinition := self getEmbedded01Process.

	task := processDefinition getScriptNamed: 'script-embedded-01' ifNone: [self assert: false].

	self assert: (task roles anySatisfy: [:each | each name = 'administrator']).

	subProc := processDefinition getSubProcessTaskNamed: 'embedded 02' ifNone: [self assert: false].
	self assert: (subProc roles anySatisfy: [:each | each name = 'administrator']).