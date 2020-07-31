other
testEndsNodesNames5
	| endNames |

	endNames := #('pr5_end1' 'pr5_end2').

	self assert: (self getProcess5Workflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess5Workflow endNodesSize = endNames size).