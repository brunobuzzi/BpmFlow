test
testExecuteProcess_visaAborted_01
	| currentTask currentProcessMatrix finishedProcessMatrix processId |

	procInstance := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').
	processId := procInstance id.
	currentProcessMatrix := procInstance getProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance.
	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.

	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenName[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenSurname[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	"here the process is cancelled"
	procInstance abortProcess: nil.
	procInstance currentState isConfirmed: true. 
	procInstance confirmAbortion.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (procDefinition hasAbortedProcess: processId).
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenName[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenSurname[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.