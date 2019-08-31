other
testActivitiesNames
	| taskNames |

	taskNames := #('dashboard-form').

	self assert: (self getProcessWorkflow getTaskNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcessWorkflow getTaskNodes size = taskNames size).