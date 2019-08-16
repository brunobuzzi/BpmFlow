test
testTransitionTreePossiblePathsToEnd

	self assert: (senderProcessDef asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 1.

	self assert: (receiverProcesDef asTreeWithLoopTolerance: 5) getAllPossiblePathToEnd size equals: 3.