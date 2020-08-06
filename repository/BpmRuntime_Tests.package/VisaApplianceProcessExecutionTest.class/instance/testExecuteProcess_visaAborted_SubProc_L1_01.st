test
testExecuteProcess_visaAborted_SubProc_L1_01
	| currentTask gateway subProcessL1 processId subProcId currentProcessMatrix finishedProcessMatrix subProcCurrentMatrix subProcFinishedMatrix |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.
	self assert: (procInstance startEventName = 'visa apply start').

	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance on: procInstance.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenName[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenSurname[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.	
	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data on: procInstance.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).
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

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_check_previous_appliance on: procInstance.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 1).
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenId[n]' in: 'check-previous-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'expirationDate[d]' in: 'check-previous-appliance') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	"Sub Process Execution [home-office-check] starts here "
		subProcessL1 := procInstance subprocessesLast.
		subProcId := subProcessL1 id.
		subProcCurrentMatrix := subProcessL1 getAvailableProcessMatrix.
		subProcFinishedMatrix := subProcessL1 getFinishedProcessMatrix.
 
		self assert: (procInstance includesSubProcess: subProcessL1).
		self assert:  subProcessL1 isSubProcess.
		self assert: (subProcessL1 startEventName = 'start visa check').

		"Step 1 [subproc] - Form [check-applicant-record]"
		currentTask := subProcessL1 currentActivities last.
		self assert: (currentTask getDefinitionName = 'check-applicant-record').
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) notEmpty.

		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vc' withForm: (self formInstance_check_applicant_record: subProcessL1) on: subProcessL1.

		self assert: ((subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) size = 1).
		self assert: ((subProcessL1 definition getCollectionForFieldsNamed: 'checkApplicantRecord[s]' in: 'check-applicant-record') select: [:fieldValue | fieldValue processId = subProcId]) notEmpty.

		self assert: procInstance isRunning.
		self assert: subProcessL1 isRunning.

		"here the process is cancelled"
		subProcessL1 abortProcess: nil.
		subProcessL1 currentState isConfirmed: true. 
		subProcessL1 confirmAbortion. "cancel all process tree -sub processes and the top process-"

		self deny: procInstance isRunning.
		self deny: subProcessL1 isRunning.

		self assert: (subProcessL1 definition hasAbortedProcess: subProcId).
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
		self assert: (subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.

		self assert: (procDefinition hasAbortedProcess: processId).
		self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
		self assert: (finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
		self assert: (finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
		self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.

	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenName[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenSurname[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'originCountry[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'gender[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenId[n]' in: 'check-previous-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'expirationDate[d]' in: 'check-previous-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.

	self assert: ((subProcessL1 definition getCollectionForFieldsNamed: 'checkApplicantRecord[s]' in: 'check-applicant-record') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.