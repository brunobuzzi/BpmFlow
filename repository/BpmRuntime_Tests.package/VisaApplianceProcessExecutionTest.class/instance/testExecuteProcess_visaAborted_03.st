test
testExecuteProcess_visaAborted_03
	| currentTask gateway subProcessL1 subProcessL2 processId currentProcessMatrix takenProcessMatrix finishedProcessMatrix subProcId subProcCurrentMatrix subProcFinishedMatrix subProc2CurrentMatrix subProc2FinishedMatrix subProc2Id assignment |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEventName = 'visa apply start').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	takenProcessMatrix := procInstance getTakenProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

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
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self assert: (currentTask getDefinitionName = 'check-basic-data').

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data on: procInstance.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).
	self assert: ((procDefinition getCollectionForFieldsNamed: 'originCountry[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'gender[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) notEmpty.
	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'accept basic data').
	self assert: procInstance isRunning.
	"Step 4 - Form [check-previous-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-previous-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.

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

		self assert: subProcessL1 isRunning.
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

		"Step 2 [subproc] - Form [applicant-home-office-report]"
		currentTask := subProcessL1 currentActivities last.
		self assert: (currentTask getDefinitionName = 'applicant-home-office-report').
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) notEmpty.

		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vc' withForm: (self formInstance_applicant_home_office_report: subProcessL1) on: subProcessL1.

		self assert: ((subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) size = 2).
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
		self assert: ((subProcessL1 definition getCollectionForFieldsNamed: 'offenseDate[d]' in: 'applicant-home-office-report') select: [:fieldValue | fieldValue processId = subProcId]) notEmpty.
		self assert: ((subProcessL1 definition getCollectionForFieldsNamed: 'offenseExpiration[d]' in: 'applicant-home-office-report') select: [:fieldValue | fieldValue processId = subProcId]) notEmpty.

		"Sub Process Execution [check-financial-data]"
			subProcessL2 := subProcessL1 subprocessesLast.
			self assert: procInstance isRunning.
			self assert: subProcessL1 isRunning.
			self assert: subProcessL2 isRunning.
			subProc2Id := subProcessL2 id.
			subProc2CurrentMatrix := subProcessL2 getAvailableProcessMatrix.
			subProc2FinishedMatrix := subProcessL2 getFinishedProcessMatrix.
			self assert: (subProcessL1 includesSubProcess: subProcessL2).
			self assert:  subProcessL2 isSubProcess.
			self assert: (subProcessL2 startEventName = 'start financial check').

			"Step 1 [subproc] - Form [check-accounts]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-accounts').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.

			self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew fo' withForm: (self formInstance_check_accounts: subProcessL2) on: subProcessL2.

			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).
			self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'accountsDetails[s]' in: 'check-accounts') select: [:fieldValue | fieldValue processId = subProc2Id]) notEmpty.
			"Step 2 [subproc] - Form [check-properties]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-properties').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.

			self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew po' withForm: (self formInstance_check_properties: subProcessL2) on: subProcessL2.

			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).
			self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'propertiesDetails[s]' in: 'check-properties') select: [:fieldValue | fieldValue processId = subProc2Id]) notEmpty.
			"Step 3 [subproc] - Form [check-debts]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-debts').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.

			self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew do' withForm: (self formInstance_check_debts: subProcessL2) on: subProcessL2.

			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).
			self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'debtsDetails[s]' in: 'check-debts') select: [:fieldValue | fieldValue processId = subProc2Id]) notEmpty.
			"Step 4 [subproc] - Form [financial-report]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'financial-report').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.

			self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew fo' withForm: (self formInstance_financial_report: subProcessL2) on: subProcessL2.

			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 2).
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'assetValue[n]' in: 'financial-report') select: [:fieldValue | fieldValue processId = subProc2Id]) notEmpty.
			self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'assetType[s]' in: 'financial-report') select: [:fieldValue | fieldValue processId = subProc2Id]) notEmpty.
			"Sub Process [check-financial-data] ends and gives control to previous process"
		"Sub Process [check-applicant-record] ends and gives control to main process"

	"Top Process [visa-appliance] resume execution "

	"Step 5 - Form [analyze-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'analyze-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_analyze_appliance on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 2).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.

	"Step 6 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'granted').

	"Step 7 - Form [emit-visa]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'emit-visa').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.

	assignment := self processExecutionSimulator takeTask: currentTask forUserNamed: 'andrew vm' withForm: self formInstance_emit_visa on: procInstance.

	self assert: procInstance isRunning.
	self deny: subProcessL1 isRunning.
	self deny: subProcessL2 isRunning.
	"here the process is cancelled"
	procInstance abortProcess: nil.
	procInstance currentState isConfirmed: true. 
	procInstance confirmAbortion.

	self deny: procInstance isRunning.

	self assert: (procDefinition hasAbortedProcess: processId).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (takenProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (takenProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.

	self assert: (subProcessL1 definition hasAbortedProcess: subProcId).
	self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
	self assert: (subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.

	self assert: (subProcessL2 definition hasAbortedProcess: subProc2Id).
	self assert: (subProcCurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
	self assert: (subProcFinishedMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
	self assert: (subProcCurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
	self assert: (subProcFinishedMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
	self assert: (subProcCurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
	self assert: (subProcFinishedMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProcId}) isEmpty.

	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenName[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenSurname[s]' in: 'citizen-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'originCountry[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'gender[s]' in: 'check-basic-data') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'citizenId[n]' in: 'check-previous-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'expirationDate[d]' in: 'check-previous-appliance') select: [:fieldValue | fieldValue processId = processId]) isEmpty.

	self assert: ((subProcessL1 definition getCollectionForFieldsNamed: 'checkApplicantRecord[s]' in: 'check-applicant-record') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.
	self assert: ((subProcessL1 definition getCollectionForFieldsNamed: 'offenseDate[d]' in: 'applicant-home-office-report') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.
	self assert: ((subProcessL1 definition getCollectionForFieldsNamed: 'offenseExpiration[d]' in: 'applicant-home-office-report') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.	

	self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'accountsDetails[s]' in: 'check-accounts') select: [:fieldValue | fieldValue processId = subProc2Id]) isEmpty.
	self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'debtsDetails[s]' in: 'check-debts') select: [:fieldValue | fieldValue processId = subProc2Id]) isEmpty.
	self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'assetValue[n]' in: 'financial-report') select: [:fieldValue | fieldValue processId = subProc2Id]) isEmpty.
	self assert: ((subProcessL2 definition getCollectionForFieldsNamed: 'assetType[s]' in: 'financial-report') select: [:fieldValue | fieldValue processId = subProc2Id]) isEmpty.