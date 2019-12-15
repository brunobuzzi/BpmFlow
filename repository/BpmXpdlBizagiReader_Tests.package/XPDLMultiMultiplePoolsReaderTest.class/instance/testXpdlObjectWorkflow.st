other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getProcess1Workflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getProcess2Workflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getProcess3Workflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getProcess4Workflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getProcess5Workflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].