test
testExecuteProcess_LoanRejected
	| senderProcessInstance receiverProcessInstance currentProcessMatrix takenProcessMatrix finishedProcessMatrix currentTask processId |

	senderProcessInstance := senderProcessDef createAndStartProcessInstance: (self getUserNamed: 'andrew ap').
	receiverProcessInstance := receiverProcesDef createAndStartProcessInstance: (self getUserNamed: 'andrew ap').

	self assert: (senderProcessInstance startEventName = 'start').
	self assert: (receiverProcessInstance startEventName = 'start').

	currentProcessMatrix := senderProcessInstance getAvailableProcessMatrix.
	takenProcessMatrix := senderProcessInstance getTakenProcessMatrix.
	finishedProcessMatrix := senderProcessInstance getFinishedProcessMatrix.

	"Sender Process: Step 1 - Form [loan-application]"
	processId := senderProcessInstance processId.
	currentTask := senderProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'loan-application').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'applicant' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew ap' withForm: (self formInstance_loan_application: senderProcessInstance) on: senderProcessInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'applicant' satisfying: {:assign | assign.processId = processId}) size = 1).

	"Receiver Process: Step 1 - Form [house-purchase-application]"
	processId := receiverProcessInstance processId.
	currentTask := receiverProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'house-purchase-application').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'applicant' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew ap' withForm: (self formInstance_house_purchase_application: receiverProcessInstance) on: receiverProcessInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'applicant' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: (receiverProcessInstance getRunningGatewayNamed: 'loan event' ifNone: [nil]) notNil.
	self assert: (testRoot detectMonitoredEventNamed: 'timer' withProcessId: receiverProcessInstance processId) notNil.

	"Sender Process: Step 2 - Form [study-loan-application]"
	processId := senderProcessInstance processId.
	currentTask := senderProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'study-loan-application').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'loan approver' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew la' withForm: (self formInstance_study_loan_application_2: receiverProcessInstance processId in: senderProcessInstance) on: senderProcessInstance.
	self assert: (senderProcessInstance loanApproved not).
	"here the message was sent from <senderProcessInstance> to <receiverProcessInstance>"
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'loan approver' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: senderProcessInstance endEventsNotEmpty. "the sender process has finalized"

	"Sender Process: Step 2 - Form [cancel-purchase]"
	self assert: (receiverProcessInstance loanApproved not).
	self assert: (receiverProcessInstance getRunningGatewayNamed: 'loan event' ifNone: [nil]) notNil. "this gateway time is only finalized by a timer or process termination"
	self assert: (testRoot detectMonitoredEventNamed: 'timer' withProcessId: receiverProcessInstance processId) notNil.
	processId := receiverProcessInstance processId.
	currentTask := receiverProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'cancel-purchase').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'seller' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew se' withForm: (self formInstance_cancel_purchase: receiverProcessInstance) on: receiverProcessInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'seller' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: receiverProcessInstance endEventsNotEmpty. "the sender process has finalized"
	self assert: (receiverProcessInstance getRunningGatewayNamed: 'loan event' ifNone: [nil]) isNil.
	self assert: (testRoot detectMonitoredEventNamed: 'timer' withProcessId: receiverProcessInstance processId) isNil.

	self deny: receiverProcessInstance isRunning.
	self deny: senderProcessInstance isRunning.