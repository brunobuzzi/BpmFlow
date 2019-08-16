test
testTransitionTreePossiblePaths

	self assert: senderProcessDef asTree getAllPossiblePath size equals: 2.

	self assert: receiverProcesDef asTree getAllPossiblePath size equals: 3.