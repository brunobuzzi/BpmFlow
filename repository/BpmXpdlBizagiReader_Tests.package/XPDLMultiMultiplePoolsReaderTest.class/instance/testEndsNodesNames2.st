other
testEndsNodesNames2
	| endNames |

	endNames := #('pr2_end1' 'pr2_end2').

	self assert: (self getProcess2Workflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess2Workflow endNodesSize = endNames size).