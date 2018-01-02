other
testExecuteProcess_visaAborted_01
	| currentTask gateway currentProcessMatrix finishedProcessMatrix processId |

	procInstance := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').
	processId := procInstance id.
	currentProcessMatrix := procInstance getProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:e | e.processId = processId}) notEmpty.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance.
	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:e | e.processId = processId}) notEmpty.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data.

	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'accept basic data').

	"Step 4 - Form [check-previous-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-previous-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:e | e.processId = processId}) notEmpty.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:e | e.processId = processId}) size = 2).

	"here the process is cancelled"
	procInstance abortProcess: nil; confirmAbortion.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:e | e.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:e | e.processId = processId}) size = 0).