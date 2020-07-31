other
testEndsNodesNames3
	| endNames |

	endNames := #('pr3_end').

	self assert: (self getProcess3Workflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess3Workflow endNodesSize = endNames size).