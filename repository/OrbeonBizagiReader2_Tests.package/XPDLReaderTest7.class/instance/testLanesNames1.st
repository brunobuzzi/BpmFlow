other
testLanesNames1
	| lanesNames |

	lanesNames := #('Lane 1' 'Lane 2' 'Lane 3').

	self assert: (self getProcess1Workflow parentPool lanes allSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess1Workflow parentPool lanes size = lanesNames size).