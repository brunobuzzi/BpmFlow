other
testLanesNames5
	| lanesNames |

	lanesNames := #('Lane 10').

	self assert: (self getProcess5Workflow parentPool lanesAllSatisfy: [:each | lanesNames includes: each getName]).

	self assert: (self getProcess5Workflow parentPool lanesSize = lanesNames size).