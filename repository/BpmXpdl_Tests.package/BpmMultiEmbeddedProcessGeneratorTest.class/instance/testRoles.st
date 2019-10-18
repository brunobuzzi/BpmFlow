tests
testRoles
	| task subProc processDefinition |

	processDefinition := self getTopProcess.

	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (task roles anySatisfy: [:each | each name = 'administrator']).

	subProc := processDefinition getSubProcessTaskNamed: 'embedded 01' ifNone: [self assert: false].
	self assert: (subProc roles anySatisfy: [:each | each name = 'administrator']).