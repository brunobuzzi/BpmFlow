other
testLoopOneWithBeforeCondition
	| currentTask endArtifact formInstance |

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.

	formInstance := self formInstance_withValues: (self generateRandomValuesIn: TimeStamp now) in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime: TimeStamp now.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
"	self processExecutionSimulator takeTask: currentTask forUserNamed: 'john' withForm: formInstance on: aBpmProcessInstance."
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	self assert: (currentTask numberOfIterations = 1).

	"Step 2 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.