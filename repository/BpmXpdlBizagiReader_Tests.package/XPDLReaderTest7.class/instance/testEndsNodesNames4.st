other
testEndsNodesNames4
	| endNames |

	endNames := #('pr4_end1' 'pr4_end2').

	self assert: (self getProcess4Workflow endNodes allSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess4Workflow endNodes size = endNames size).