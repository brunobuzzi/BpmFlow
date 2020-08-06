test
testProcessTriggerErrorEventCode_9
	| currentTask formInstance subProcess subProcessTask procId subProcId |

	self assert: (procInstance startEventName = 'start').
	"Step 1 - It create the subprocess immediately"
	procId := procInstance id.
	"Sub Process Execution [form-process] starts here "
		subProcess := procInstance subprocessesLast.
		subProcId := subProcess id.
		currentTask := subProcess currentActivities last.
		self assert: currentTask getDefinitionName equals: 'dashboard-form'.
		formInstance := self formInstance_withValues: self generateRandomValues in: subProcess.
		formInstance createdTime: TimeStamp now;
			modifiedTime:TimeStamp now.

		self assert: (subProcess getValueOfProcessField: 'stamp') isNil.

		self assert: subProcess currentActivities size equals: 1.
		self assert: currentTask state equals: #created.
		self assert: (subProcess getAvailableProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = subProcId}) size equals: 1.
		self processExecutionSimulator takeTask: currentTask forUserNamed: 'andrew vo' withForm: formInstance on: subProcess.
		self assert: (subProcess getAvailableProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = subProcId}) size equals: 0.
		self assert: (subProcess getTakenProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = subProcId}) size equals: 1.

	subProcessTask := procInstance getSubProcessesTasks last.
	subProcessTask triggerAttachedEventNamed: 'sub-proc-error' withProperties: (Dictionary newFromPairs: {'errorCode' . 9}).

		self assert: subProcess endEventsAsOrderedCollection size equals: 0.
		self assert: (subProcessTask attachedEventsNamed:'sub-proc-error') size equals: 1.
		self assert: (procInstance getEventsNamed: 'sub-proc-error' ifNone: [#()]) size equals: 1.

		self assert: (procInstance getValueOfProcessField: 'stamp') isNil. "the script task is never executed because the abort prevent the #nextRunningTransition to be executed"
		self assert: procInstance currentActivities size equals: 0.

	"Step 2 - The main process is automatically finish because next transition goes to an end event"
	self assert: subProcess endEventsAsOrderedCollection size equals: 0.
	self assert: procInstance endEventsAsOrderedCollection size equals: 0.

	"Test Process Cancellation"
	self assert: (subProcess getTakenProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = subProcId}) size equals: 0.
	self assert: (subProcess getFinishedProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = subProcId}) size equals: 0.
	self assert: (subProcess getAvailableProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = subProcId}) size equals: 0.
	self assert: (subProcess definition hasAbortedProcess: subProcId).
	self assert: (procDefinition hasAbortedProcess: procId).
	self assert: ((subProcess definition getCollectionForFieldsNamed: 'invoiceAmount[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.
	self assert: ((subProcess definition getCollectionForFieldsNamed: 'cost[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.
	self assert: ((subProcess definition getCollectionForFieldsNamed: 'industry[s]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.
	self assert: ((subProcess definition getCollectionForFieldsNamed: 'confirmed[b]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) isEmpty.