other
testEndsNodesNames1
	| endNames |

	endNames := #('pr1_end1' 'pr1_end2').

	self assert: (self getProcess1Workflow endNodes allSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess1Workflow endNodes size = endNames size).