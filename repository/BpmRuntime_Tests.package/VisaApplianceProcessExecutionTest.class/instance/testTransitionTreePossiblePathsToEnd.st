test
testTransitionTreePossiblePathsToEnd
	| subProc subSubProc |

	self assert: procDefinition asTree getAllPossiblePathToEnd size equals: 3.

	subProc := procDefinition subProcesses asArray last.
	self assert:  subProc asTree getAllPossiblePathToEnd size equals: 1.

	subSubProc := subProc subProcesses asArray last.
	self assert:  subSubProc asTree getAllPossiblePathToEnd size equals: 1.