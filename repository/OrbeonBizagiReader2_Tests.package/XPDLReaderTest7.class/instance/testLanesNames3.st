other
testLanesNames3
	| lanesNames |

	lanesNames := #('Lane 6' 'Lane 7').

	self assert: (self getProcess3Workflow parentPool lanes allSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess3Workflow parentPool lanes size = lanesNames size).