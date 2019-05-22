other
testSendMessageLoanWithException
	| receiverProcessInstance currentProcessMatrix processId currentTask result |

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

	apiOperation := BpmSendMessageToProcessApi newFor: WABpmPersistenceOrbeonLayer new withXml: self bodyExample2.
	apiOperation appName: 'ue';
		processName: 'House Purchase with Loan';
		gatewayName: 'loan event';
		eventName: 'loan message';
		id: 111.

	result := [apiOperation doIt] on: BpmServiceException do: [:ex | self assert: true].

	self assert: ((receiverProcessInstance valueAtExternalVariable: 'loanApproved') = nil).
	self assert: ((receiverProcessInstance valueAtExternalVariable: 'amount') = nil).

	self assert: receiverProcessInstance currentActivities isEmpty.
	self assert: (receiverProcessInstance hasRunningGatewayNamed: 'loan event').

	receiverProcessInstance abortProcess: (self getUserNamed: 'andrew se').
	receiverProcessInstance confirmAbortion.