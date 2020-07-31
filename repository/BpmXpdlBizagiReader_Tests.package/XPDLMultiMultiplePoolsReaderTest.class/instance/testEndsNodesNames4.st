other
testEndsNodesNames4
	| endNames |

	endNames := #('pr4_end1' 'pr4_end2').

	self assert: (self getProcess4Workflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess4Workflow endNodesSize = endNames size).