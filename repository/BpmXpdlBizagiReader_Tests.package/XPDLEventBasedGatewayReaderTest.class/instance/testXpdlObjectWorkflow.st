other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getWorkflow.

	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].

	self assert: (workflow startNode workflow == workflow).
	workflow getEventNodes do: [:each | self assert: (each workflow == workflow)].
	workflow endNodes do: [:each | self assert: (each workflow == workflow)].