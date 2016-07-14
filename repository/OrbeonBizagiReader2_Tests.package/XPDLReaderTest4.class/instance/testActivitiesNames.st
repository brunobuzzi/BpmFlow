other
testActivitiesNames
	| taskNames |

	taskNames := #('script').

	self assert: (self getProcess1Workflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).

	self assert: (self getProcess1Workflow getScriptNodes size = taskNames size).