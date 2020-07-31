other
testEndsNodesNames2
	| endNames |

	endNames := #('end 1' 'end 2').

	self assert: (self getProcess2Workflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess2Workflow endNodesSize = endNames size).