other
testSetVariableWithProcessQuery
	| currentTask value |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').
	currentTask := procInstance currentActivities last.
	value := Lag1MwcRandom new integer printString.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: (self formInstance_task1: value) on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-1').

	apiOperation appName: 'ue-test';
		processDefinitionId: procDefinition id printString;
		processInstanceId: '0';
		xmlString: (self bodyExample2: value).

	apiOperation doIt.

	self deny: (procInstance valueAtExternalVariable: 'approved').
	self assert: ((procInstance valueAtExternalVariable: 'amount') = 125)