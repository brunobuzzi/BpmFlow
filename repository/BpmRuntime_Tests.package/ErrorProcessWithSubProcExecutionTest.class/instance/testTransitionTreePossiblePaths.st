test
testTransitionTreePossiblePaths
	| subProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 2.

	subProc := procDefinition subProcesses asArray first.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 1.