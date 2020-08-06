other
testProcessTriggerErrorEventCode_2
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

	currentTask triggerAttachedEventNamed: 'error-event' withProperties: (Dictionary newFromPairs: {'errorCode' . 2}).

	self assert: (self getTakenProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = procId}) size equals: 0.
	self assert: (self getFinishedProcessMatrix getAvailableTasksFor: 'chart-role' satisfying: {:each | each.processId = procId}) size equals: 1.
	
	self assert: (currentTask attachedEventsNamed:'error-event') size equals: 1.
	self assert: (procInstance getEventsNamed: 'error-event' ifNone: [#()]) size equals: 1.

	self assert: (procInstance getValueOfProcessField: 'stamp') notNil.
	self assert: (procInstance getValueOfProcessField: 'stamp') class equals: TimeStamp.
	self assert: procInstance currentActivities size equals: 0.
	self assert: currentTask state equals: #cancelled.

	self assert: procInstance endEventsSize equals: 1.