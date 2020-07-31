test
testTransitionTreePossibleLoops
	| subProc subSubProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	subProc := procDefinition subProcessesLast.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	subSubProc := subProc subProcessesLast.
	self assert: (subSubProc asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.