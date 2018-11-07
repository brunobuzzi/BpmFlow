execution and test
resumeAssignFromTask2AndTestProcess: aBpmProcessInstance
	"The receiver resume the execution of <aBpmProcessInstance> from the <aBpmTaskInstance> number 2 and finish it execution"
	| currentTask currentProcessMatrix finishedProcessMatrix processId |

	processId := aBpmProcessInstance id.
	currentProcessMatrix := aBpmProcessInstance getAvailableProcessMatrix.
	finishedProcessMatrix := aBpmProcessInstance getFinishedProcessMatrix.

	"Step 2 - Form [check-basic-data]"
	currentTask :=  aBpmProcessInstance currentActivities last.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	self takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: (self formInstance_check_basic_data: aBpmProcessInstance).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).

	self resumeAssignFromTask3AndTestProcess: aBpmProcessInstance.