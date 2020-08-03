other
testEmbeddedProcess

	self assert: (self getMainWorkflow embeddedSubprocessesLast == self getEmbeddedWorkflow).

	self assert: (self getEmbeddedWorkflow parentWorkflowIsIdenticalTo: self getMainWorkflow).