other
testReusableActivitiesNames
	| taskNames |

	taskNames := #('script-reusable').

	self assert: (self getReusableWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).
	self assert: (self getReusableWorkflow getScriptNodes size = 1).

	self assert: (self getReusableWorkflow startNodeName = 'start-resusable').
	self assert: (self getReusableWorkflow endNodesLastName = 'end-reusable').