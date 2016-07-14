other
testLanesNames4
	| lanesNames |

	lanesNames := #('Lane 8' 'Lane 9').

	self assert: (self getProcess4Workflow parentPool lanes allSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess4Workflow parentPool lanes size = lanesNames size).