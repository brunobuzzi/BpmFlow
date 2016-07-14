other
testActivitiesNames5
	| taskNames |

	taskNames := #('Task 15' 'Task 16' 'Task 17').

	self assert: (self getProcess5Workflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess5Workflow getTaskNodes size = taskNames size).