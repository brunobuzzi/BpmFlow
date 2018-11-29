other
testActivitiesNames2
	| taskNames |

	taskNames := #('Task 7' 'Task 8' 'Task 9').

	self assert: (self getProcess2Workflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess2Workflow getTaskNodes size = taskNames size).