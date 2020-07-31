other
testEndsNodesNames2
	| endNames |

	endNames := #('end').

	self assert: (self getFixIssueWorkflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getFixIssueWorkflow endNodesSize = endNames size).