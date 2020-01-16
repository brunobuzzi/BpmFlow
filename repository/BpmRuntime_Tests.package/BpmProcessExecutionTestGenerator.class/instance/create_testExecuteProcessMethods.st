cg testExecuteProcess
create_testExecuteProcessMethods
	| codeStream |

	codeStream := String new writeStream.
	procInstance getProcessesTreeAsCollection do: [:each | self create_testExecuteProcessMethodsOn: codeStream for: each] 
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 1500319936))
create_formInstanceMethods.
"