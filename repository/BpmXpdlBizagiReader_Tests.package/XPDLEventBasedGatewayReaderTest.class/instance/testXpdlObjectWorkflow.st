other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getWorkflow.

	workflow getTaskNodes do: [:each | self assert: (each workflowIsIdenticalTo:  workflow)].

	self assert: workflow startNodeWorkflowIsIdenticalToSelf.
	workflow getEventNodes do: [:each | self assert: (each workflowIsIdenticalTo:  workflow)].
	workflow endNodesDo: [:each | self assert: (each workflowIsIdenticalTo:  workflow)].