other
testEndsNodesNames
	| endNames |

	endNames := #('end').

	self assert: (self getTestCaseWorkflow endNodes allSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getTestCaseWorkflow endNodes size = endNames size).