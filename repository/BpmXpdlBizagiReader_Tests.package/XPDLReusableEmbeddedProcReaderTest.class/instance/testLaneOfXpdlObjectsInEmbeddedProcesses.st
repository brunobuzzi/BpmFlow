other
testLaneOfXpdlObjectsInEmbeddedProcesses

	self getEmbeddedWorkflow getTaskNodes do: [:each | self assert: each lane notNil].
	self getEmbeddedWorkflow getScriptNodes do: [:each | self assert: each lane notNil].