test
testExecuteProcess_boolean_exit_aborted
	| currentTask assignment processId currentProcessMatrix takenProcessMatrix finishedProcessMatrix |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	takenProcessMatrix := procInstance getTakenProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'runner' satisfying: {:assign | assign.processId = processId}) notEmpty.
	assignment := self takeTask: currentTask forUserNamed: 'alberto' withForm: self formInstance_boolean_exit on: procInstance. "assignment is not finished"

	self assert: (currentTask getDefinitionName = 'all-field-types').
	self assert: ((procDefinition getCollectionForFieldsNamed: 'boolean[b]' in: 'all-field-types') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'runner' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'runner' satisfying: {:assign | assign.processId = processId}) isEmpty.

	self finalizeAssignment: assignment withUserNamed: 'alberto' on: procInstance. "assignment is finished"
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'runner' satisfying: {:assign | assign.processId = processId}) notEmpty.

	procInstance abortProcess: nil.
	procInstance currentState isConfirmed: true. 
	procInstance confirmAbortion.

	self assert: ((procDefinition getCollectionForFieldsNamed: 'boolean[b]' in: 'all-field-types') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'runner' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (takenProcessMatrix getAvailableTasksFor: 'runner' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'runner' satisfying: {:assign | assign.processId = processId}) isEmpty.