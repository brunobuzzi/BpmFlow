other
testSetVariableWithProcessQueryWithException
	| currentTask result |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task1 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-1').

	apiOperation appName: 'ue';
		processDefinitionId: procDefinition id printString;
		processInstanceId: '0';
		xmlString: self bodyExample.

	result := [apiOperation doIt] on: BpmServiceException do: [:ex | ^self assert: true].

	"if there is more than one process "
	self deny: (procInstance valueAtExternalVariable: 'approved').
	self assert: ((procInstance valueAtExternalVariable: 'amount') = 20)