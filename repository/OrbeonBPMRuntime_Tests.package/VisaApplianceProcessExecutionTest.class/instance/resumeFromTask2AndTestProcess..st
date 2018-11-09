execution and test
resumeFromTask2AndTestProcess: aBpmProcessInstance
	"The receiver resume the execution of <aBpmProcessInstance> from the <aBpmTaskInstance> number 2 and finish it execution"
	| currentTask assignment currentProcessMatrix takenProcessMatrix finishedProcessMatrix processId |

	processId := aBpmProcessInstance id.
	currentProcessMatrix := aBpmProcessInstance getAvailableProcessMatrix.
	takenProcessMatrix := aBpmProcessInstance getTakenProcessMatrix.
	finishedProcessMatrix := aBpmProcessInstance getFinishedProcessMatrix.

	"Step 2 - Form [check-basic-data]"
	currentTask :=  aBpmProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-basic-data').

	assignment := aBpmProcessInstance getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
	self processExecutionSimulator associate: assignment withForm: (self formInstance_check_basic_data: aBpmProcessInstance) on: aBpmProcessInstance.
	self processExecutionSimulator finalizeAssignment: assignment withUserNamed: assignment getUsername on: aBpmProcessInstance.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).

	self resumeFromTask3AndTestProcess: aBpmProcessInstance.