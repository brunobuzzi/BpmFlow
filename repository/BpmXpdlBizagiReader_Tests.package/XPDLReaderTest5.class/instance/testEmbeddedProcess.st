other
testEmbeddedProcess

	self assert: (self getMainWorkflow embeddedSubprocesses asArray last == self getEmbeddedWorkflow).

	self assert: (self getMainWorkflow == self getEmbeddedWorkflow parentWorkflow).