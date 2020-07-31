test
testTransitionTreePossiblePathsToEnd
	| subProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcessesFirst.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcessesLast.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.