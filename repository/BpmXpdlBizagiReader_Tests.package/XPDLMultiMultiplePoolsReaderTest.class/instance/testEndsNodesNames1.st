other
testEndsNodesNames1
	| endNames |

	endNames := #('pr1_end1' 'pr1_end2').

	self assert: (self getProcess1Workflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess1Workflow endNodesSize = endNames size).