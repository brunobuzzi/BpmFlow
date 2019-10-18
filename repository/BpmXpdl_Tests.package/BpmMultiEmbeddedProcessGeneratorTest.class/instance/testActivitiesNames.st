tests
testActivitiesNames
	| taskNames processDefinition |

	taskNames := #('script').
	processDefinition := self getTopProcess.

	(taskNames collect: [:each | processDefinition getScriptNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	taskNames := #('embedded 01').
	(taskNames collect: [:each | processDefinition getSubProcessTaskNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	processDefinition := self getEmbedded01Process.
	taskNames := #('script-embedded-01').

	(taskNames collect: [:each | processDefinition getScriptNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	taskNames := #('embedded 02').
	(taskNames collect: [:each | processDefinition getSubProcessTaskNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	processDefinition := self getEmbedded02Process.
	taskNames := #('script-embedded-02').

	(taskNames collect: [:each | processDefinition getScriptNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].