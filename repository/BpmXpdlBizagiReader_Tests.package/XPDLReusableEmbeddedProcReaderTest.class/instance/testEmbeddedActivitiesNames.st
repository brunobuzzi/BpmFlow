other
testEmbeddedActivitiesNames
	| taskNames |

	taskNames := #('script-embedded').

	self assert: (self getEmbeddedWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).
	self assert: (self getEmbeddedWorkflow getScriptNodes size = 1).

	self assert: (self getEmbeddedWorkflow startNodeName = 'start-embedded').
	self assert: (self getEmbeddedWorkflow endNodesLastName = 'end-embedded').