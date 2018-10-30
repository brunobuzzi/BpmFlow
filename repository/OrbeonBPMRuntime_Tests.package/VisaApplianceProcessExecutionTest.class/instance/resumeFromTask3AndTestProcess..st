execution and test
resumeFromTask3AndTestProcess: aBpmProcessInstance
	"The receiver resume the execution of <aBpmProcessInstance> from the <aBpmTaskInstance> number 2 and finish it execution"
	| currentTask assignment gateway endArtifact subProcessL1 subProcessL2 processId currentProcessMatrix finishedProcessMatrix subProcId subProcCurrentMatrix subProcFinishedMatrix subProc2CurrentMatrix subProc2FinishedMatrix subProc2Id |

	processId := aBpmProcessInstance id.
	currentProcessMatrix := aBpmProcessInstance getAvailableProcessMatrix.
	finishedProcessMatrix := aBpmProcessInstance getFinishedProcessMatrix.

	"Step 3 - Gateway Evaluation"
	gateway := aBpmProcessInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'accept basic data').

	"Step 4 - Form [check-previous-appliance]"
	currentTask := aBpmProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-previous-appliance').

	assignment := aBpmProcessInstance getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
	self associate: assignment withForm: (self formInstance_check_previous_appliance: aBpmProcessInstance) on: aBpmProcessInstance.
	self finalizeAssignment: assignment withUserNamed: assignment getUsername on: aBpmProcessInstance.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 1).

	"Sub Process Execution [home-office-check] starts here "
		subProcessL1 := aBpmProcessInstance subprocesses last.
		subProcId := subProcessL1 id.
		subProcCurrentMatrix := subProcessL1 getAvailableProcessMatrix.
		subProcFinishedMatrix := subProcessL1 getFinishedProcessMatrix.

		self assert: (aBpmProcessInstance includesSubProcess: subProcessL1).
		self assert:  subProcessL1 isSubProcess.
		self assert: (subProcessL1 startEvent getDefinitionName = 'start visa check').

		"Step 1 [subproc] - Form [check-applicant-record]"
		currentTask := subProcessL1 currentActivities last.
		self assert: (currentTask getDefinitionName = 'check-applicant-record').

		assignment := subProcessL1 getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
		self associate: assignment withForm: (self formInstance_check_applicant_record: subProcessL1) on: subProcessL1.
		self finalizeAssignment: assignment withUserNamed: assignment getUsername on: subProcessL1.

		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.
		self assert: ((subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) size = 1).

		"Step 2 [subproc] - Form [applicant-home-office-report]"
		currentTask := subProcessL1 currentActivities last.
		self assert: (currentTask getDefinitionName = 'applicant-home-office-report').

		assignment := subProcessL1 getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
		self associate: assignment withForm: (self formInstance_applicant_home_office_report: subProcessL1) on: subProcessL1.
		self finalizeAssignment: assignment withUserNamed: assignment getUsername on: subProcessL1.

		self assert: ((subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) size = 2).
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.

		"Sub Process Execution [check-financial-data]"
			subProcessL2 := subProcessL1 subprocesses last.
			subProc2Id := subProcessL2 id.
			subProc2CurrentMatrix := subProcessL2 getAvailableProcessMatrix.
			subProc2FinishedMatrix := subProcessL2 getFinishedProcessMatrix.
			self assert: (subProcessL1 includesSubProcess: subProcessL2).
			self assert:  subProcessL2 isSubProcess.
			self assert: (subProcessL2 startEvent getDefinitionName = 'start financial check').

			"Step 1 [subproc] - Form [check-accounts]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-accounts').

			assignment := subProcessL2 getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
			self associate: assignment withForm: (self formInstance_check_accounts: subProcessL2) on: subProcessL2.
			self finalizeAssignment: assignment withUserNamed: assignment getUsername on: subProcessL2.

			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 2 [subproc] - Form [check-properties]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-properties').

			assignment := subProcessL2 getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
			self associate: assignment withForm: (self formInstance_check_properties: subProcessL2) on: subProcessL2.
			self finalizeAssignment: assignment withUserNamed: assignment getUsername on: subProcessL2.

			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 3 [subproc] - Form [check-debts]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-debts').

			assignment := subProcessL2 getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
			self associate: assignment withForm: (self formInstance_check_debts: subProcessL2) on: subProcessL2.
			self finalizeAssignment: assignment withUserNamed: assignment getUsername on: subProcessL2.

			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 4 [subproc] - Form [financial-report]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'financial-report').

			assignment := subProcessL2 getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
			self associate: assignment withForm: (self formInstance_financial_report: subProcessL2) on: subProcessL2.
			self finalizeAssignment: assignment withUserNamed: assignment getUsername on: subProcessL2.

			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 2).
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) isEmpty.

			"Sub Process [check-financial-data] ends and gives control to previous process"
		"Sub Process [check-applicant-record] ends and gives control to main process"

	"Top Process [visa-appliance] resume execution "

	"Step 5 - Form [analyze-appliance]"
	currentTask := aBpmProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'analyze-appliance').

	assignment := aBpmProcessInstance getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
	self associate: assignment withForm: (self formInstance_analyze_appliance: aBpmProcessInstance) on: aBpmProcessInstance.
	self finalizeAssignment: assignment withUserNamed: assignment getUsername on: aBpmProcessInstance.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 2).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.

	"Step 6 - Gateway Evaluation"
	gateway := aBpmProcessInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'granted').

	"Step 7 - Form [emit-visa]"
	currentTask := aBpmProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'emit-visa').

	assignment := aBpmProcessInstance getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
	self associate: assignment withForm: (self formInstance_emit_visa: aBpmProcessInstance) on: aBpmProcessInstance.
	self finalizeAssignment: assignment withUserNamed: assignment getUsername on: aBpmProcessInstance.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 3).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.

	endArtifact := aBpmProcessInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'visa apply end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.