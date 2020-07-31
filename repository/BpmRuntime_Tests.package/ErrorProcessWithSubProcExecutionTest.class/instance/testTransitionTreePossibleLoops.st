test
testTransitionTreePossibleLoops
	| subProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	subProc := procDefinition subProcessesFirst.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.