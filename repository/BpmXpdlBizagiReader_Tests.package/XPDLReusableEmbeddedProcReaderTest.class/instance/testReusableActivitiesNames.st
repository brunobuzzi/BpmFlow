other
testReusableActivitiesNames
	| taskNames |

	taskNames := #('script-reusable').

	self assert: (self getReusableWorkflow getScriptNodes allSatisfy: [:each | taskNames includes: each getName]).
	self assert: (self getReusableWorkflow getScriptNodes size = 1).

	self assert: (self getReusableWorkflow startNode getName = 'start-resusable').
	self assert: (self getReusableWorkflow endNodesLast getName = 'end-reusable').