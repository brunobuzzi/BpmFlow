test
testTransitionTreePossiblePaths
	| subProc subSubProc |

	self assert: procDefinition asTree getAllPossiblePath size equals: 3.

	subProc := procDefinition subProcesses asArray last.
	self assert:  subProc asTree getAllPossiblePath size equals: 1.

	subSubProc := subProc subProcesses asArray last.
	self assert:  subSubProc asTree getAllPossiblePath size equals: 1.