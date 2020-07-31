test
testTransitionTreePossiblePaths
	| subProc |

	self assert: procDefinition asTree getAllPossiblePath size equals: 1.

	subProc := procDefinition subProcessesFirst.
	self assert:  subProc asTree getAllPossiblePath size equals: 1.

	subProc := procDefinition subProcessesLast.
	self assert:  subProc asTree getAllPossiblePath size equals: 1.