test
testExecuteProcess_errorCode_1
	| senderProcessInstance currentProcessMatrix takenProcessMatrix finishedProcessMatrix currentTask processId receiverProcessId |

	senderProcessInstance := senderProcessDef createAndStartProcessInstance: (self getUserNamed: 'andrew ap').
	receiverProcessId := Lag1MwcRandom new integer.

	self assert: (senderProcessInstance startEventName = 'start').

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

	"Sender Process: Step 2 - Form [study-loan-application]"
	processId := senderProcessInstance processId.
	currentTask := senderProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'study-loan-application').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'loan approver' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew la' withForm: (self formInstance_study_loan_application_1: receiverProcessId in: senderProcessInstance) on: senderProcessInstance.

	"here the message was sent from <senderProcessInstance> to <receiverProcessInstance>"
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'loan approver' satisfying: {:assign | assign.processId = processId}) size = 1).

	self assert: (senderProcessInstance executedScriptsNotEmpty).
	self assert: (senderProcessInstance getValueOfProcessField: 'stamp') notNil.
	self assert: (senderProcessInstance getValueOfProcessField: 'stamp') class equals: TimeStamp.