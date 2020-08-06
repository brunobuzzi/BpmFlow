test
testExecuteProcess_visaAborted_02
	| currentTask gateway currentProcessMatrix takenProcessMatrix finishedProcessMatrix processId assignment |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	takenProcessMatrix := procInstance getTakenProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	self assert: (procInstance startEventName = 'visa apply start').
	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance on: procInstance.

	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenName[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenSurname[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data on: procInstance.

	self assert: ((procDefinition getCollectionForFieldsNamed: 'originCountry[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'gender[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'accept basic data').

	"Step 4 - Form [check-previous-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-previous-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).

	assignment := self processExecutionSimulator takeTask: currentTask forUserNamed: 'andrew vm' withForm: self formInstance_check_previous_appliance on: procInstance. 
	self assert: procInstance isRunning.
	"here the process is cancelled"
	procInstance abortProcess: nil.
	procInstance currentState isConfirmed: true. 
	procInstance confirmAbortion.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (takenProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (procDefinition hasAbortedProcess: processId).
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenName[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenSurname[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'originCountry[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'gender[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self deny: procInstance isRunning.