other
testActivitiesNames2
	| taskNames processDefinition |

	taskNames := #('analyze-issue' 'report-fixes' 'internal-test').
	processDefinition := self getFixIssueProcess.

	(taskNames collect: [:each | processDefinition getTaskNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	self assert: (taskNames size = processDefinition getNumberOfTasks)