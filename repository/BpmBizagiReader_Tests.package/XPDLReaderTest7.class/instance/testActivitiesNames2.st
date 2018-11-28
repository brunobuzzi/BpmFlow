other
testActivitiesNames2
	| taskNames |

	taskNames := #('Task 3' 'Task 4' 'Task 5' 'Task 6' 'Task 7' 'Task 8').

	self assert: (self getProcess2Workflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess2Workflow getTaskNodes size = taskNames size).