other
testLanesNames5
	| lanesNames |

	lanesNames := #('Lane 10').

	self assert: (self getProcess5Workflow parentPool lanes allSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess5Workflow parentPool lanes size = lanesNames size).