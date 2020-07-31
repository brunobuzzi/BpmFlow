test
testTransitionTreePossiblePathsToEnd
	| subProc |

	self assert: procDefinition asTree getAllPossiblePathToEnd size equals: 2.

	subProc := procDefinition subProcessesFirst.
	self assert:  subProc asTree getAllPossiblePathToEnd size equals: 1.