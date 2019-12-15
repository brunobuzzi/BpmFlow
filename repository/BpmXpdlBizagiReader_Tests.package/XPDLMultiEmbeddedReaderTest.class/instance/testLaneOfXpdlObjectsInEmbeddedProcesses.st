other
testLaneOfXpdlObjectsInEmbeddedProcesses

	self getLevel1_EmbeddedWorkflow getTaskNodes do: [:each | self assert: each lane notNil].
	self getLevel1_EmbeddedWorkflow getScriptNodes do: [:each | self assert: each lane notNil].

	self getLevel2_EmbeddedWorkflow getTaskNodes do: [:each | self assert: each lane notNil].
	self getLevel2_EmbeddedWorkflow getScriptNodes do: [:each | self assert: each lane notNil].