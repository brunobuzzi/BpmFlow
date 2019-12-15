other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getProcess1Workflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].