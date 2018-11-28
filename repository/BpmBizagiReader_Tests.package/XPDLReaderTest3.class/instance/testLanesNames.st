other
testLanesNames
	| lanesNames |

	lanesNames := #('Lane 1' 'Lane 2' 'Lane 3').

	self assert: (self getProcess1Pool lanes allSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess1Pool lanes size = lanesNames size).