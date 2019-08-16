test
testTransitionTreePossibleLoops

	self assert: (senderProcessDef asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.

	self assert: (receiverProcesDef asTreeWithLoopTolerance: 5) getAllPossibleLoops size equals: 0.