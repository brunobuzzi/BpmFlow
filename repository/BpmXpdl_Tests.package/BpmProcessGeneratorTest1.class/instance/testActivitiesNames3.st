other
testActivitiesNames3
	| taskNames processDefinition |

	taskNames := #('analyze-developer-report' 'report-workaround' 'report-solution').
	processDefinition := self getArchitectProcess.

	(taskNames collect: [:each | processDefinition getTaskNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	self assert: (taskNames size = processDefinition getNumberOfTasks)