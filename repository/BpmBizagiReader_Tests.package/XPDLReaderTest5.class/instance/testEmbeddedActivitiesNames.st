other
testEmbeddedActivitiesNames
	| taskNames |

	taskNames := #('script-embedded').

	self assert: (self getEmbeddedWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).
	self assert: (self getEmbeddedWorkflow getScriptNodes size = 1).

	self assert: (self getEmbeddedWorkflow startNode getName = 'start-embedded').
	self assert: (self getEmbeddedWorkflow endNodes asArray last getName = 'end-embedded').