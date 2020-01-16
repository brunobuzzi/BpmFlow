code generation
create_testExecuteProcessMethods
	| processLog transitionEntries |

	processLog := procInstance asExecutionLog.
	transitionEntries := processLog getTransitionsEntries.
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 3215866310))
create_formInstanceMethods.
"