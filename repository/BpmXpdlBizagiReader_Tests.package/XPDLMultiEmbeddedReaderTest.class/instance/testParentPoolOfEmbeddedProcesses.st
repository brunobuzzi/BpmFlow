other
testParentPoolOfEmbeddedProcesses

	self assert: self getLevel1_EmbeddedWorkflow parentPool notNil.

	self assert: self getLevel2_EmbeddedWorkflow parentPool notNil.

	self assert: (self getMainWorkflow parentPool == self getLevel1_EmbeddedWorkflow parentPool).

	self assert: (self getMainWorkflow parentPool == self getLevel2_EmbeddedWorkflow parentPool).