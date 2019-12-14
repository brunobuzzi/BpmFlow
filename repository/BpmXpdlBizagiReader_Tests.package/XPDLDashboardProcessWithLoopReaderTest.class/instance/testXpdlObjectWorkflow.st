other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getProcessWorkflow.

	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)]