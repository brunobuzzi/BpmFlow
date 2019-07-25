other
testProcessOk
	| currentTask endArtifact formInstance |

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_withValues: self generateRandomValues in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime:TimeStamp now. 
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	"Step 2 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.