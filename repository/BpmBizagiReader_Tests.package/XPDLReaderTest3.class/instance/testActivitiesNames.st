other
testActivitiesNames
	| taskNames |

	taskNames := #('Task 1' 'Task 2' 'Task 3' 'Task 4' 'Task 5' 'Task 6').

	self assert: (self getProcess1Workflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess1Workflow getTaskNodes size = taskNames size).