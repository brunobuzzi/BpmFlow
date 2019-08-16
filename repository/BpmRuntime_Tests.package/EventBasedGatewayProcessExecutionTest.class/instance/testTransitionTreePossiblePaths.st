test
testTransitionTreePossiblePaths

	self assert: (senderProcessDef asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 1.

	self assert: (receiverProcesDef asTreeWithLoopTolerance: 5) getAllPossiblePath size equals: 3.