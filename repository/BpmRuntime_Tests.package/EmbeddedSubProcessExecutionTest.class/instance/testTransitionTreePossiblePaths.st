test
testTransitionTreePossiblePaths
	| subProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 1.

	subProc := procDefinition subProcessesFirst.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 1.

	subProc := procDefinition subProcessesLast.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 1.