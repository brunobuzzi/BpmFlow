test
testExecuteProcess_visaAborted_SubProc_L1_01
	| currentTask gateway subProcessL1 processId subProcId currentProcessMatrix finishedProcessMatrix subProcCurrentMatrix subProcFinishedMatrix |

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
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data.

	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'accept basic data').

	"Step 4 - Form [check-previous-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-previous-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).
	self processTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_check_previous_appliance.

	"Sub Process Execution [home-office-check] starts here "
		subProcessL1 := procInstance subprocesses last.
		subProcId := subProcessL1 id.
		subProcCurrentMatrix := subProcessL1 getProcessMatrix.
		subProcFinishedMatrix := subProcessL1 getFinishedProcessMatrix.
 
		self assert: (procInstance includesSubProcess: subProcessL1).
		self assert:  subProcessL1 isSubProcess.
		self assert: (subProcessL1 startEvent getDefinitionName = 'start visa check').

		"Step 1 [subproc] - Form [check-applicant-record]"
		currentTask := subProcessL1 currentActivities last.
		self assert: (currentTask getDefinitionName = 'check-applicant-record').
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) notEmpty.
		self processTask: currentTask withUserNamed: 'andrew vc' withForm: (self formInstance_check_applicant_record: subProcessL1) on: subProcessL1.
		self assert: ((subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) size = 1).

		"here the process is cancelled"
		subProcessL1 abortProcess: nil.
		subProcessL1 currentState isConfirmed: true. 
		subProcessL1 confirmAbortion. "cancel all process tree -sub processes and the top process-"
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
		self assert: (subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
		self assert: (subProcessL1 definition hasAbortedProcess: subProcId).
		self assert: (procDefinition hasAbortedProcess: processId).
		self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
		self assert: (finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.