cg testExecuteProcess
create_testExecuteProcessMethodNamed: aString on: aStream for: aBpmProcessInstance methodsRepository: aDictionary
	| processLog transitionEntries |

	aStream nextPutAll: aString; cr.
	processLog := aBpmProcessInstance asExecutionLog.
	transitionEntries := processLog getTransitionsEntries.

	self createTemporaryVariablesOn: aStream for: aBpmProcessInstance.
	self createProcessInstanceOn: aStream for: aBpmProcessInstance.
	self createTaskMatricesOn: aStream for: aBpmProcessInstance.
	
	transitionEntries do: [:eachEntry | | transition |
		transition := eachEntry bpmObject.
	]. 

	aDictionary at: aString put: aStream contents
"
(BpmProcessExecutionTestGenerator newOn:
(BpmProcessDefinition getProcessInstanceWithId: 1500319936))
create_formInstanceMethods.
"