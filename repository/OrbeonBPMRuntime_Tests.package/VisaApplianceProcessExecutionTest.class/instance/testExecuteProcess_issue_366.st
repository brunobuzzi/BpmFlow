test
testExecuteProcess_issue_366
	"Test the github issue #366 for recursive search for a field value
	Go to the last asserts in this method"
	| currentTask gateway endArtifact subProcessL1 subProcessL2 processId currentProcessMatrix finishedProcessMatrix subProcId subProcCurrentMatrix subProcFinishedMatrix subProc2CurrentMatrix subProc2FinishedMatrix subProc2Id |

	procInstance := procDefinition createAndStartProcessInstance: (users at: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	processId := procInstance id.
	currentProcessMatrix := procInstance getProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 1).

	"Step 2 - Form [check-basic-data]"
	currentTask :=  procInstance currentActivities last.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self assert: (currentTask getDefinitionName = 'check-basic-data').
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_check_basic_data.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 2).

	"Step 3 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'accept basic data').

	"Step 4 - Form [check-previous-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'check-previous-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_check_previous_appliance.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 1).

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


		"Step 2 [subproc] - Form [applicant-home-office-report]"
		currentTask := subProcessL1 currentActivities last.
		self assert: (currentTask getDefinitionName = 'applicant-home-office-report').
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) notEmpty.
		self processTask: currentTask withUserNamed: 'andrew vc' withForm: (self formInstance_applicant_home_office_report: subProcessL1) on: subProcessL1.
		self assert: ((subProcFinishedMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) size = 2).
		self assert: (subProcCurrentMatrix getAvailableTasksFor: 'visa checker' satisfying: {:assign | assign.processId = subProcId}) isEmpty.

		"Sub Process Execution [check-financial-data]"
			subProcessL2 := subProcessL1 subprocesses last.
			subProc2Id := subProcessL2 id.
			subProc2CurrentMatrix := subProcessL2 getProcessMatrix.
			subProc2FinishedMatrix := subProcessL2 getFinishedProcessMatrix.
			self assert: (subProcessL1 includesSubProcess: subProcessL2).
			self assert:  subProcessL2 isSubProcess.
			self assert: (subProcessL2 startEvent getDefinitionName = 'start financial check').

			"Step 1 [subproc] - Form [check-accounts]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-accounts').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.
			self processTask: currentTask withUserNamed: 'andrew fo' withForm: (self formInstance_check_accounts: subProcessL2) on: subProcessL2.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 2 [subproc] - Form [check-properties]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-properties').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.
			self processTask: currentTask withUserNamed: 'andrew po' withForm: (self formInstance_check_properties: subProcessL2) on: subProcessL2.
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'properties officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 3 [subproc] - Form [check-debts]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'check-debts').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.
			self processTask: currentTask withUserNamed: 'andrew do' withForm: (self formInstance_check_debts: subProcessL2).
			self assert: ((subProc2FinishedMatrix getAvailableTasksFor: 'debts officer' satisfying: {:assign | assign.processId = subProc2Id}) size = 1).

			"Step 4 [subproc] - Form [financial-report]"
			currentTask := subProcessL2 currentActivities last.
			self assert: (currentTask getDefinitionName = 'financial-report').
			self assert: (subProc2CurrentMatrix getAvailableTasksFor: 'finance officer' satisfying: {:assign | assign.processId = subProc2Id}) notEmpty.
			self processTask: currentTask withUserNamed: 'andrew fo' withForm: (self formInstance_financial_report: subProcessL2) on: subProcessL2.
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
	self processTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_analyze_appliance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 2).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.

	"Step 6 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'granted').

	"Step 7 - Form [emit-visa]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'emit-visa').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_emit_visa.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) size = 3).
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa manager' satisfying: {:assign | assign.processId = processId}) isEmpty.

	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'visa apply end') and: [endArtifact isEndEvent]).

	self assert: ((procInstance getValueOfProcessField: 'non-existent-field') = nil).
	self assert: ((procInstance getValueOfProcessField: 'non-existent-field[i]') = nil).
	self assert: ((procInstance getValueOfProcessField: 'hello-field') = nil).
	self assert: ((procInstance getValuesOfProcessField: 'citizenName') includes: 'Jorge').
	self assert: ((procInstance getValuesOfProcessField: 'citizenName') includes: 'Ceci').
	self assert: ((procInstance getValuesOfProcessField: 'citizenName') includes: 'Bruno').

	self assert: ((procInstance getValuesOfProcessField: 'citizenPhone') includes: '999106087').
	self assert: ((procInstance getValuesOfProcessField: 'citizenPhone') includes: '999789654').

	"this is a repeatable field --> we get the collection directly with #getValueOfProcessField:"
	self assert: ((procInstance getValueOfProcessField: 'assetType') includes: 'debt'). 
	self assert: ((procInstance getValueOfProcessField: 'assetValue') includes: 300000).
	self assert: ((procInstance getValueOfProcessField: 'assetType') includes: 'bank-accout').
	self assert: ((procInstance getValueOfProcessField: 'assetValue') includes: 600000).
	self assert: ((procInstance getValueOfProcessField: 'assetType') includes: 'bank-accout').
	self assert: ((procInstance getValueOfProcessField: 'assetValue') includes: 50000).
	self assert: ((procInstance getValueOfProcessField: 'assetType') includes: 'bank-accout').
	self assert: ((procInstance getValueOfProcessField: 'assetValue') includes: 900000).