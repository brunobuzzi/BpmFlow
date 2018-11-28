test
testExecuteProcess_LoanRejectedByTimer
	| senderProcessInstance receiverProcessInstance currentProcessMatrix takenProcessMatrix finishedProcessMatrix currentTask currentTask2 processId |

	senderProcessInstance := senderProcessDef createAndStartProcessInstance: (self getUserNamed: 'andrew ap').
	receiverProcessInstance := receiverProcesDef createAndStartProcessInstance: (self getUserNamed: 'andrew ap').
	self setTimerEventToFiveSeconds.
	self assert: (senderProcessInstance startEvent getDefinitionName = 'start').
	self assert: (receiverProcessInstance startEvent getDefinitionName = 'start').

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
	self assert: (self defaultTimerEventMonitor detectMonitoredEventNamed: 'timer' withProcessId: receiverProcessInstance processId) notNil.

	"Timer is executed here"
	self defaultTimerEventMonitor triggerArtifactTimersWith: TimeStamp now.
	(Delay forSeconds: 8) wait.
	self defaultTimerEventMonitor triggerArtifactTimersWith: TimeStamp now.

	"Sender Process: Step 2 - Form [study-loan-application]"
	processId := senderProcessInstance processId.
	currentTask := senderProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'study-loan-application').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'loan approver' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew la' withForm: (self formInstance_study_loan_application_1: receiverProcessInstance processId in: senderProcessInstance) on: senderProcessInstance.
	self assert: (senderProcessInstance loanApproved).
	"here the message was sent from <senderProcessInstance> to <receiverProcessInstance>"
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'loan approver' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: senderProcessInstance endEvents notEmpty. "the sender process has finalized"

	"Sender Process: Step 2 - Form [cancel-purchase]"
	self assert: (receiverProcessInstance valueAtExternalVariable: 'loanApproved') notNil.
	self assert: (receiverProcessInstance getRunningGatewayNamed: 'loan event' ifNone: [nil]) notNil.
	"timer event is NOT removed from <BpmTimerEventMonitor> until the process is finished"
	self assert: (self defaultTimerEventMonitor detectMonitoredEventNamed: 'timer' withProcessId: receiverProcessInstance processId) notNil.
	processId := receiverProcessInstance processId.
	"timers do NOT close parallel event gateways only keep triggering the event of the timer until the process is finalized"
	"so we have two current task [cancel-purchase] and [proceed-purchase] (this situation does no make sense from business point of view -proceed&cancel- but is ok as a test)"
	self assert: (receiverProcessInstance currentActivities size = 2).
	currentTask := receiverProcessInstance currentActivities first.
	currentTask2 := receiverProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'cancel-purchase').
	self assert: ((currentProcessMatrix getAvailableTasksFor: 'seller' satisfying: {:assign | assign.processId = processId}) size = 2).
	"after this task is done the process is finalized (although there is still a task to be finished)"
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew se' withForm: (self formInstance_cancel_purchase: receiverProcessInstance) on: receiverProcessInstance.
	self assert: ((currentProcessMatrix getAvailableTasksFor: 'seller' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: (receiverProcessInstance getRunningGatewayNamed: 'loan event' ifNone: [nil]) isNil.
	self assert: (receiverProcessInstance endEventsSize = 1). "the sender process has finalized"
	self assert: (self defaultTimerEventMonitor detectMonitoredEventNamed: 'timer' withProcessId: receiverProcessInstance processId) isNil.
	self processExecutionSimulator takeAndFinalizeTask: currentTask2 withUserNamed: 'andrew se' withForm: (self formInstance_proceed_purchase: receiverProcessInstance) on: receiverProcessInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'seller' satisfying: {:assign | assign.processId = processId}) size = 2).
	self assert: (receiverProcessInstance endEventsSize = 2). 

	self setTimerEventToOneDay.