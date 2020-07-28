other
testLanesNames1
	| lanesNames |

	lanesNames := #('Lane 1' 'Lane 2' 'Lane 3').

	self assert: (self getProcess1Workflow parentPool lanesAllSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess1Workflow parentPool lanesSize = lanesNames size).