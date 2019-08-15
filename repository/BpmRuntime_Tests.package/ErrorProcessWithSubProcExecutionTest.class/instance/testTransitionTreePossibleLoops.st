test
testTransitionTreePossibleLoops
	| subProc |

	self assert: procDefinition asTree getAllPossibleLoops size equals: 0.

	subProc := procDefinition subProcesses asArray first.
	self assert:  subProc asTree getAllPossibleLoops size equals: 0.