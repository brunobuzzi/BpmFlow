other
testLanesNames4
	| lanesNames |

	lanesNames := #('Lane 8' 'Lane 9').

	self assert: (self getProcess4Workflow parentPool lanesAllSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess4Workflow parentPool lanesSize = lanesNames size).