other
testActivitiesNames3
	| taskNames |

	taskNames := #('Task 9' 'Task 10' 'Task 11' 'Task 12').

	self assert: (self getProcess3Workflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess3Workflow getTaskNodes size = taskNames size).