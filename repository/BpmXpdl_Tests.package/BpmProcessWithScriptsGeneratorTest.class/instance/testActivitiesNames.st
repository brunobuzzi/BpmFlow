other
testActivitiesNames
	| taskNames processDefinition |

	taskNames := #('script').
	processDefinition := self getScriptProcess.

	(taskNames collect: [:each | processDefinition getScriptNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	self assert: (taskNames size = processDefinition getNumberOfScripts).