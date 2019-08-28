other
testEndsNodesNames2
	| endNames |

	endNames := #('end').

	self assert: (self getFixIssueWorkflow endNodes allSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getFixIssueWorkflow endNodes size = endNames size).