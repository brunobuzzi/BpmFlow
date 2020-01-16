cg testExecuteProcess
create_testExecuteProcessMethodsOn: aStream for: aBpmProcessInstance
	| processLog transitionEntries |

	processLog := aBpmProcessInstance asExecutionLog.
	transitionEntries := processLog getTransitionsEntries.

	self createTemporaryVariablesOn: aStream for: aBpmProcessInstance.
	self createProcessInstanceOn: aStream for: aBpmProcessInstance.
	self createTaskMatricesOn: aStream for: aBpmProcessInstance.
	
	transitionEntries do: [:eachEntry | | transition |
		transition := eachEntry bpmObject.
	]. 
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 1500319936))
create_formInstanceMethods.
"