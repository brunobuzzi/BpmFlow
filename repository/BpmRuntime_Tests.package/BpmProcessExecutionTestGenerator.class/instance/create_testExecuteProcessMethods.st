cg testExecuteProcess
create_testExecuteProcessMethods
	| codeStream processLog transitionEntries |

	processLog := procInstance asExecutionLog.
	transitionEntries := processLog getTransitionsEntries.

	codeStream := String new writeStream.
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 3215866310))
create_formInstanceMethods.
"