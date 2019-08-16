test
testTransitionTreePossiblePaths

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 2.