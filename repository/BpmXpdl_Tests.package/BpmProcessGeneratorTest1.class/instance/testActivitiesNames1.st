other
testActivitiesNames1
	| taskNames processDefinition |

	taskNames := #('test-case' 'execute-test' 'test-ok' 'analyze-issue-report').
	processDefinition := self getTestCaseProcess.

	(taskNames collect: [:each | processDefinition getTaskNamed: each ifNone: [nil]])
		do: [:each | self assert: each notNil].

	self assert: (taskNames size = processDefinition getNumberOfTasks)