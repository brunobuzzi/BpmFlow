test
testTransitionTreePossibleLoops
	| subProc |

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	subProc := procDefinition subProcesses asArray first.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	subProc := procDefinition subProcesses asArray last.
	self assert: (subProc asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.