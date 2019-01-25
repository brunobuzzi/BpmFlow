execution and test
startAssignFinishAndTestProcess: aBpmProcessInstance
	"The receiver start the execution of the new created <aBpmProcessInstance> and finish it execution"
	| currentTask processId currentProcessMatrix finishedProcessMatrix |

	self assert: (aBpmProcessInstance startEvent getDefinitionName = 'visa apply start').
	processId := aBpmProcessInstance id.
	currentProcessMatrix := aBpmProcessInstance getAvailableProcessMatrix.
	finishedProcessMatrix := aBpmProcessInstance getFinishedProcessMatrix.

	"Step 1 - Form [citizen-appliance]"
	currentTask := aBpmProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance_random_country on: aBpmProcessInstance.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 1).

	self resumeAssignFromTask2AndTestProcess: aBpmProcessInstance.