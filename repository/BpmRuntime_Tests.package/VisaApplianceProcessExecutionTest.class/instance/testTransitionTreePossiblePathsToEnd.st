test
testTransitionTreePossiblePathsToEnd
	| subProc subSubProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 3.

	subProc := procDefinition subProcessesLast.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.

	subSubProc := subProc subProcessesLast.
	self assert: (subSubProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.