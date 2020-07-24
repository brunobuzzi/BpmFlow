tests
testRoles
	| task subProc processDefinition |

	processDefinition := self getTopProcess.

	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (task rolesAnySatisfy: [:each | each name = 'administrator']).

	subProc := processDefinition getSubProcessTaskNamed: 'embedded-sub-proc' ifNone: [self assert: false].
	self assert: (subProc rolesAnySatisfy: [:each | each name = 'administrator']).

	subProc := processDefinition getSubProcessTaskNamed: 'reusable-sub-proc' ifNone: [self assert: false].
	self assert: (subProc rolesAnySatisfy: [:each | each name = 'administrator']).