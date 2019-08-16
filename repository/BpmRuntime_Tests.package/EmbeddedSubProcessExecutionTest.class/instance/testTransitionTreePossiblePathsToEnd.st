test
testTransitionTreePossiblePathsToEnd
	| subProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcesses asArray first.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcesses asArray last.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.