test
testTransitionTreePossiblePathsToEnd
	| subProc subSubProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 3.

	subProc := procDefinition subProcesses asArray last.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.

	subSubProc := subProc subProcesses asArray last.
	self assert: (subSubProc asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.