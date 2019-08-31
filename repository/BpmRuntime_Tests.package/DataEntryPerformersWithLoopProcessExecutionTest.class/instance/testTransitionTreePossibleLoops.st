test
testTransitionTreePossibleLoops

	self assert: (procDefinition asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.