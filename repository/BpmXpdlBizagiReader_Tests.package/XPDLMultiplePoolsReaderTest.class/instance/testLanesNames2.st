other
testLanesNames2
	| lanesNames |

	lanesNames := #('Lane 4' 'Lane 5').

	self assert: (self getProcess2Pool lanesAllSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess2Pool lanesSize = lanesNames size).