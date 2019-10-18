tests
testRoles
	| task subProc processDefinition |

	processDefinition := self getTopProcess.

	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (task roles anySatisfy: [:each | each name = 'administrator']).

	subProc := processDefinition getSubProcessTaskNamed: 'embedded-sub-proc' ifNone: [self assert: false].
	self assert: (subProc roles anySatisfy: [:each | each name = 'administrator']).

	subProc := processDefinition getSubProcessTaskNamed: 'reusable-sub-proc' ifNone: [self assert: false].
	self assert: (subProc roles anySatisfy: [:each | each name = 'administrator']).