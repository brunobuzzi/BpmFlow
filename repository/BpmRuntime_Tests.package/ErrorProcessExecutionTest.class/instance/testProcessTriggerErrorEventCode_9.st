other
testProcessTriggerErrorEventCode_9
	| currentTask formInstance procId |

	self assert: (procInstance startEventName = 'start').
	procId := procInstance id.
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_withValues: self generateRandomValues in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime:TimeStamp now.

	self assert: (self getAvailableProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = procId}) size equals: 1.
	self processExecutionSimulator takeTask: currentTask forUserNamed: 'andrew vo' withForm: formInstance on: procInstance.
	self assert: (self getTakenProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = procId}) size equals: 1.

	currentTask triggerAttachedEventNamed: 'error-event' withProperties: (Dictionary newFromPairs: {'errorCode' . 9}). "the process is going to be aborted"

	self assert: (self getTakenProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = procId}) size equals: 0.
	self assert: (self getFinishedProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = procId}) size equals: 0.
	self assert: (self getAvailableProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = procId}) size equals: 0.

	self assert: (procDefinition hasAbortedProcess: procId).
	self assert: ((procDefinition getCollectionForFieldsNamed: 'invoiceAmount[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'cost[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'industry[s]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) isEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'confirmed[b]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) isEmpty.