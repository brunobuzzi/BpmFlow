test
testTransitionTreePossiblePathsToEnd
	| subProc |

	self assert: procDefinition asTree getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcesses asArray first.
	self assert:  subProc asTree getAllPossiblePathToEnd size equals: 1.

	subProc := procDefinition subProcesses asArray last.
	self assert:  subProc asTree getAllPossiblePathToEnd size equals: 1.