other
testEndsNodesNames3
	| endNames |

	endNames := #('pr3_end').

	self assert: (self getProcess3Workflow endNodes allSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess3Workflow endNodes size = endNames size).