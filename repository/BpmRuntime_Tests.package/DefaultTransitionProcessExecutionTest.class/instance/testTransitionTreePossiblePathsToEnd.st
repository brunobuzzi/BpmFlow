test
testTransitionTreePossiblePathsToEnd

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 3.