other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getMainWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getEmbeddedWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getReusableWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].