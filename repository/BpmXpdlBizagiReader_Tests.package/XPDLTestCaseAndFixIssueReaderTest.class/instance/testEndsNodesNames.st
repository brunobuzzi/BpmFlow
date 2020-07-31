other
testEndsNodesNames
	| endNames |

	endNames := #('end').

	self assert: (self getTestCaseWorkflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getTestCaseWorkflow endNodesSize = endNames size).