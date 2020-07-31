other
testEndsNodesNames
	| endNames |

	endNames := #('end 1' 'end 2').

	self assert: (self getProcess1Workflow endNodesAllSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess1Workflow endNodesSize = endNames size).