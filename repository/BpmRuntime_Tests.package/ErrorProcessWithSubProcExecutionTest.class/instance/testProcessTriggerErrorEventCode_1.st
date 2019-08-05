other
testProcessTriggerErrorEventCode_1
	| currentTask formInstance |

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_withValues: self generateRandomValues in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime:TimeStamp now.

	currentTask triggerAttachedEventNamed: 'error-event' withProperties: (Dictionary newFromPairs: {'errorCode' . 1}).
	
	self assert: (currentTask attachedEventsNamed:'error-event') size equals: 1.
	self assert: (procInstance getEventsNamed: 'error-event' ifNone: [#()]) size equals: 1.

	self assert: (procInstance getValueOfProcessField: 'stamp') notNil.
	self assert: (procInstance getValueOfProcessField: 'stamp') class equals: TimeStamp.
	self assert: procInstance currentActivities size equals: 1.
	self assert: currentTask state equals: #created.

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: procInstance.

	self assert: procInstance currentActivities size equals: 0.
	self assert: currentTask isDone.

	self assert: procInstance endEventsSize equals: 2.