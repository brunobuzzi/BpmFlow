other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getMainWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getLevel1_EmbeddedWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getLevel2_EmbeddedWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].