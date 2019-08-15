test
testProcessTriggerErrorEventCode_1_finishedTask
	| currentTask formInstance subProcess subProcessTask |

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - It create the subprocess immediately"

	"Sub Process Execution [form-process] starts here "
		subProcess := procInstance subprocesses last.
		currentTask := subProcess currentActivities last.
		self assert: currentTask getDefinitionName equals: 'dashboard-form'.
		formInstance := self formInstance_withValues: self generateRandomValues in: subProcess.
		formInstance createdTime: TimeStamp now;
			modifiedTime:TimeStamp now.

		self assert: (subProcess getValueOfProcessField: 'stamp') isNil.

	subProcessTask := procInstance getSubProcessesTasks last.
	subProcessTask triggerAttachedEventNamed: 'sub-proc-error' withProperties: (Dictionary newFromPairs: {'errorCode' . 1}).

		self assert: subProcess currentActivities size equals: 1.
		self assert: currentTask state equals: #created.
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: subProcess.
		self assert: subProcess currentActivities size equals: 0.
		self assert: currentTask state equals: #done.

		self assert: subProcess endEventsAsOrderedCollection size equals: 1.
		self assert: (subProcessTask attachedEventsNamed:'sub-proc-error') size equals: 1.
		self assert: (procInstance getEventsNamed: 'sub-proc-error' ifNone: [#()]) size equals: 1.

		self assert: (procInstance getValueOfProcessField: 'stamp') notNil.
		self assert: (procInstance getValueOfProcessField: 'stamp') class equals: TimeStamp.
		self assert: procInstance currentActivities size equals: 0.

	"Step 2 - The main process is automatically finish because next transition goes to an end event"
	self assert: subProcess endEventsAsOrderedCollection size equals: 1.
	self assert: procInstance endEventsAsOrderedCollection size equals: 2.
	self assert: procInstance endEventsAsOrderedCollection last getDefinitionName equals: 'end'.