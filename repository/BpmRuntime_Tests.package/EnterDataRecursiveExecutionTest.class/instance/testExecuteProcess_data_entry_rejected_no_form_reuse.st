test
testExecuteProcess_data_entry_rejected_no_form_reuse
	| currentTask processId endArtifact currentProcessMatrix takenProcessMatrix finishedProcessMatrix form reusableFormTask |

	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	takenProcessMatrix := procInstance getTakenProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	processId := procInstance id.
	self assert: (procInstance startEvent getDefinitionName = 'start').

	"Step 1 - Form [enter-data-recursive]"
	currentTask := procInstance currentActivities last.
	reusableFormTask := currentTask definition.
	reusableFormTask isPreviousFormReusable: false. "we set to false --> the form is not going to be reused and new one will be created"
	self assert: (currentTask getDefinitionName = 'enter-data-recursive').
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_enter_data on: procInstance.
	form := currentTask externalObject.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'typist' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: ((takenProcessMatrix getAvailableTasksFor: 'typist' satisfying: {:assign | assign.processId = processId}) size = 0).
	self assert: ((currentProcessMatrix getAvailableTasksFor: 'typist' satisfying: {:assign | assign.processId = processId}) size = 0).

	"Step 2 - Form [approve-data-recursive]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'approve-data-recursive').
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_approve_data_no on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: ((takenProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) size = 0).
	self assert: ((currentProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) size = 0).

	"Step 3 - Form [enter-data-recursive]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'enter-data-recursive').
	self deny: (form == currentTask externalObject). "the form has been reused ?"
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_enter_data on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'typist' satisfying: {:assign | assign.processId = processId}) size = 2).
	self assert: ((takenProcessMatrix getAvailableTasksFor: 'typist' satisfying: {:assign | assign.processId = processId}) size = 0).
	self assert: ((currentProcessMatrix getAvailableTasksFor: 'typist' satisfying: {:assign | assign.processId = processId}) size = 0).
	self deny: (procInstance executedActivities first externalObject == procInstance executedActivities last externalObject). "these two task has to have an identical form <externalObject>"

	"Step 4 - Form [approve-data-recursive]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'approve-data-recursive').
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_approve_data_yes on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) size = 2).
	self assert: ((takenProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) size = 0).
	self assert: ((currentProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) size = 0).

	reusableFormTask isPreviousFormReusable: true.