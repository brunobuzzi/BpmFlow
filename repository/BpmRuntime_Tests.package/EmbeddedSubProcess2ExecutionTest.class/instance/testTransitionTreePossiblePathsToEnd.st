test
testTransitionTreePossiblePathsToEnd
	| subProc |

	self assert: procDefinition asTree getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcessesFirst.
	self assert:  subProc asTree getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcessesLast.
	self assert:  subProc asTree getAllPossiblePathToEnd size equals: 1.