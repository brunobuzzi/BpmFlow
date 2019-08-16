test
testTransitionTreePossibleLoops

	self assert: senderProcessDef asTree getAllPossibleLoops size equals: 0.

	self assert: receiverProcesDef asTree getAllPossibleLoops size equals: 0.