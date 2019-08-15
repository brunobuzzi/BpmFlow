test
testTransitionTreePossiblePaths
	| subProc |

	self assert: procDefinition asTree getAllPossiblePath size equals: 2.

	subProc := procDefinition subProcesses asArray first.
	self assert:  subProc asTree getAllPossiblePath size equals: 1.