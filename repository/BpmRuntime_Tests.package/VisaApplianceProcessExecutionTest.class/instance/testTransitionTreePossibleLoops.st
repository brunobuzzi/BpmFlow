test
testTransitionTreePossibleLoops
	| subProc subSubProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	subProc := procDefinition subProcesses asArray last.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	subSubProc := subProc subProcesses asArray last.
	self assert: (subSubProc asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.