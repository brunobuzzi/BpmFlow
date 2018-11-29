other
testActivitiesNames4
	| taskNames |

	taskNames := #('Task 13' 'Task 14').

	self assert: (self getProcess4Workflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess4Workflow getTaskNodes size = taskNames size).