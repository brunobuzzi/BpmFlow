other
testProcessOk
	| currentTask endArtifact formInstance subProcess subProcId |

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - It create the subprocess immediately"

	"Sub Process Execution [form-process] starts here "
		subProcess := procInstance subprocesses last.
		subProcId := subProcess id.
		currentTask := subProcess currentActivities last.
		self assert: currentTask getDefinitionName equals: 'dashboard-form'.
		formInstance := self formInstance_withValues: self generateRandomValues in: subProcess.
		formInstance createdTime: TimeStamp now;
			modifiedTime:TimeStamp now.
		self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: subProcess.
		self assert: subProcess endEventsAsOrderedCollection size equals: 1.
		self assert: subProcess endEventsAsOrderedCollection last getDefinitionName equals: 'end'.

	"Step 2 - The main process is automatically finish because next transition goes to an end event"
	self assert: subProcess endEventsAsOrderedCollection size equals: 1.
	self assert: subProcess endEventsAsOrderedCollection last getDefinitionName equals: 'end'.

	self assert: ((subProcess definition getCollectionForFieldsNamed: 'invoiceAmount[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) notEmpty.
	self assert: ((subProcess definition getCollectionForFieldsNamed: 'cost[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) notEmpty.
	self assert: ((subProcess definition getCollectionForFieldsNamed: 'industry[s]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) notEmpty.
	self assert: ((subProcess definition getCollectionForFieldsNamed: 'confirmed[b]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = subProcId]) notEmpty.