other
testXpdlObjectWorkflow
	| workflow |

	workflow := self getFixIssueWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getTestCaseWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].

	workflow := self getReportToArchitectWorkflow.
	workflow getTaskNodes do: [:each | self assert: (each workflow == workflow)].
	workflow getScriptNodes do: [:each | self assert: (each workflow == workflow)].