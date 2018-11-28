other
testEndsNodesNames
	| endNames |

	endNames := #('end 1' 'end 2').

	self assert: (self getProcess1Workflow endNodes allSatisfy: [:each | endNames includes: each getName]).

	self assert: (self getProcess1Workflow endNodes size = endNames size).