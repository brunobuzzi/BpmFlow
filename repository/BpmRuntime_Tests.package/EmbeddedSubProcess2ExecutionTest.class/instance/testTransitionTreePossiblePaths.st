test
testTransitionTreePossiblePaths
	| subProc |

	self assert: procDefinition asTree getAllPossiblePath size equals: 1.

	subProc := procDefinition subProcesses asArray first.
	self assert:  subProc asTree getAllPossiblePath size equals: 1.

	subProc := procDefinition subProcesses asArray last.
	self assert:  subProc asTree getAllPossiblePath size equals: 1.