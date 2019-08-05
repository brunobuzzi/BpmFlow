other
testProcessOk
	| currentTask endArtifact formInstance subProcess |

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - It create the subprocess immediately"

	"Sub Process Execution [form-process] starts here "
		subProcess := procInstance subprocesses last.
		currentTask := subProcess currentActivities last.
		self assert: currentTask getDefinitionName equals: 'dashboard-form'.
		formInstance := self formInstance_withValues: self generateRandomValues in: procInstance.
		formInstance createdTime: TimeStamp now;
			modifiedTime:TimeStamp now.
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: subProcess.
		self assert: subProcess endEventsAsOrderedCollection size equals: 1.
		self assert: subProcess endEventsAsOrderedCollection last getDefinitionName equals: 'end'.

	"Step 2 - The main process is automatically finish because next transition goes to an end event"
	self assert: subProcess endEventsAsOrderedCollection size equals: 1.
	self assert: subProcess endEventsAsOrderedCollection last getDefinitionName equals: 'end'.