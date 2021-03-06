other
testSendMessageLoanApproved
	| receiverProcessInstance currentProcessMatrix processId currentTask |

	receiverProcessInstance := receiverProcesDef createAndStartProcessInstance: (self getUserNamed: 'andrew ap').

	self assert: (receiverProcessInstance startEvent getDefinitionName = 'start').

	currentProcessMatrix := receiverProcessInstance getAvailableProcessMatrix.

	"Receiver Process: Step 1 - Form [house-purchase-application]"
	processId := receiverProcessInstance processId.
	currentTask := receiverProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'house-purchase-application').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'applicant' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew ap' withForm: (self formInstance_house_purchase_application: receiverProcessInstance) on: receiverProcessInstance.
	self assert: (receiverProcessInstance getRunningGatewayNamed: 'loan event' ifNone: [nil]) notNil.
	self assert: (self defaultTimerEventMonitor detectMonitoredEventNamed: 'timer' withProcessId: receiverProcessInstance processId) notNil.

	apiOperation := BpmSendMessageToProcessApi newFor: WABpmPersistenceOrbeonLayer new withXml: self bodyExample.
	apiOperation appName: 'ue-test';
		processName: 'House Purchase with Loan';
		gatewayName: 'loan event';
		eventName: 'loan message';
		id: receiverProcessInstance id.

	apiOperation doIt.

	self assert: (receiverProcessInstance valueAtExternalVariable: 'loanApproved').
	self assert: ((receiverProcessInstance valueAtExternalVariable: 'amount') = 999).

	currentTask := receiverProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'proceed-purchase').

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew se' withForm: (self formInstance_proceed_purchase: receiverProcessInstance) on: receiverProcessInstance.

	self assert: receiverProcessInstance hasFinalized.