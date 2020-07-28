other
testLanesNames
	| lanesNames |

	lanesNames := #('Lane 1' 'Lane 2' 'Lane 3').

	self assert: (self getProcess1Pool lanesAllSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess1Pool lanesSize = lanesNames size).