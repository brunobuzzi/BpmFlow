tests
testActivitiesNames
	| taskNames processDefinition |

	taskNames := #('script').
	processDefinition := self getTopProcess.

	(taskNames collect: [:each | processDefinition getScriptNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	taskNames := #('embedded-sub-proc' 'reusable-sub-proc').
	(taskNames collect: [:each | processDefinition getSubProcessTaskNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	processDefinition := self getReusableSubProcess.
	taskNames := #('script-reusable').

	(taskNames collect: [:each | processDefinition getScriptNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	processDefinition := self getEmbeddedSubProcess.
	taskNames := #('script-embedded').

	(taskNames collect: [:each | processDefinition getScriptNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].