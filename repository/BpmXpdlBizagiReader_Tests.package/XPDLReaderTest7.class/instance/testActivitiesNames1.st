other
testActivitiesNames1
	| taskNames |

	taskNames := #('Task 1' 'Task 2').

	self assert: (self getProcess1Workflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess1Workflow getTaskNodes size = taskNames size).