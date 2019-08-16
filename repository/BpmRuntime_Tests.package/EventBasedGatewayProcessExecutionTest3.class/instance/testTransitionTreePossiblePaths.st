test
testTransitionTreePossiblePaths

	self assert: senderProcessDef asTree getAllPossiblePath size equals: 1.

	self assert: receiverProcesDef asTree getAllPossiblePath size equals: 3.