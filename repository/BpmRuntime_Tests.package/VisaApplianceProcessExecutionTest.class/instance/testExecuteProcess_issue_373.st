test
testExecuteProcess_issue_373
	| currentTask assignment gateway endArtifact subProcessL1 subProcessL2 processId currentProcessMatrix finishedProcessMatrix subProcId subProcCurrentMatrix subProcFinishedMatrix subProc2CurrentMatrix subProc2FinishedMatrix subProc2Id |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEventName = 'visa apply start').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.

	assignment := self processExecutionSimulator takeTask: currentTask forUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance on: procInstance.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | each processId = processId]) notEmpty.
	
	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') ungrantUser: (self getUserNamed: 'andrew vo').

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self assert: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | each processId = processId]) isEmpty.

	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'ue') grantUser: (self getUserNamed: 'andrew vo').
	(self getUserNamed: 'andrew vo') take: assignment.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (((self getUserNamed: 'andrew vo') getCurrentAssignmentsIn: self bpmEnvironment) select: [:each | each processId = processId]) notEmpty.

	self processExecutionSimulator finalizeAssignment: assignment withUserNamed: 'andrew vo' on: procInstance.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 1).

	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data on: procInstance.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).

	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'accept basic data').

	"Step 4 - Form [check-previous-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-previous-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_check_previous_appliance on: procInstance.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 1).

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


		"Step 2 [subproc] - Form [applicant-home-office-report]"
		currentTask := subProcessL1 currentActivities last.
		self assert: (currentTask getDefinitionName = 'applicant-home-office-report').
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) notEmpty.
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vc' withForm: (self formInstance_applicant_home_office_report: subProcessL1) on: subProcessL1.
		self assert: ((subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) size = 2).
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.

		"Sub Process Execution [check-financial-data]"
			subProcessL2 := subProcessL1 subprocessesLast.
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

			"Step 2 [subproc] - Form [check-properties]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-properties').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.
			self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew po' withForm: (self formInstance_check_properties: subProcessL2) on: subProcessL2.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 3 [subproc] - Form [check-debts]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-debts').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.
			self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew do' withForm: (self formInstance_check_debts: subProcessL2) on: subProcessL2.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 4 [subproc] - Form [financial-report]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'financial-report').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.
			self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew fo' withForm: (self formInstance_financial_report: subProcessL2) on: subProcessL2.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 2).
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.

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
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_emit_visa on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 3).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.

	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'visa apply end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.