other
testEmbeddedProcess

	self assert: (self getMainWorkflow embeddedSubprocessesLast == self getEmbeddedWorkflow).

	self assert: (self getMainWorkflow == self getEmbeddedWorkflow parentWorkflow).