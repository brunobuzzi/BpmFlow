other
testProcessOk
	| currentTask endArtifact formInstance procId |

	self assert: (procInstance startEventName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	procId := procInstance id.
	formInstance := self formInstance_withValues: self generateRandomValues in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime:TimeStamp now. 
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	"Step 2 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.

	self assert: ((procDefinition getCollectionForFieldsNamed: 'invoiceAmount[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'cost[n]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'industry[s]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) notEmpty.
	self assert: ((procDefinition getCollectionForFieldsNamed: 'confirmed[b]' in: 'dashboard-form') select: [:fieldValue | fieldValue processId = procId]) notEmpty.