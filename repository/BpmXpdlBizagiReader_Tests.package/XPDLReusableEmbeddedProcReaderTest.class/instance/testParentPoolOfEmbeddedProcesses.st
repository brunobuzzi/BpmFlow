other
testParentPoolOfEmbeddedProcesses

	self assert: self getEmbeddedWorkflow parentPool notNil.

	self assert: (self getMainWorkflow parentPool == self getEmbeddedWorkflow parentPool).