other
testSendAndRedirect
	| formInstance assignment currentTask |

	apiOperation := BpmSendFormAndRedirectApi new.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	self assert: procInstance currentActivities notEmpty.

	currentTask := procInstance currentActivities last.
	assignment := self processExecutionSimulator getAssignmentFor: currentTask on: procInstance	ifNone: [self assert: false].
	formInstance := self formInstance_citizen_appliance_oop: currentTask asOop printString assignOop: assignment asOop printString.
	self processExecutionSimulator takeTask: currentTask forUserNamed: 'andrew vo' withForm: formInstance on: procInstance.

	apiOperation appName: 'ue-test';
		formName: 'citizen-appliance';
		language: 'en';
		valid: true;
		id: formInstance id.

	apiOperation doIt.

	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (apiOperation bpmArtifact == currentTask).
	self assert: (formInstance assignment == assignment).
	self assert: (procDefinition getFieldsNamed: 'oop[s]' in: 'citizen-appliance' withValue: currentTask asOop printString) notEmpty.
	self assert: (procDefinition getFieldsNamed: 'assignmentOop[s]' in: 'citizen-appliance' withValue: assignment asOop printString) notEmpty.