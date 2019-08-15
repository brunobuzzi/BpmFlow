test
testTransitionTreePossibleLoops
	| subProc subSubProc |

	self assert: procDefinition asTree getAllPossibleLoops size equals: 0.

	subProc := procDefinition subProcesses asArray last.
	self assert:  subProc asTree getAllPossibleLoops size equals: 0.

	subSubProc := subProc subProcesses asArray last.
	self assert:  subSubProc asTree getAllPossibleLoops size equals: 0.