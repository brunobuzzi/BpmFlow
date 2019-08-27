test
testLoopSixWithBeforeCondition
	| currentTask endArtifact formInstance |

	procInstance atExternalVariable: 'condition' put: 11;
		triggerStartEventWith: (self getUserNamed: 'john').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_withValues: (self generateRandomValuesIn: TimeStamp now) in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime: TimeStamp now.
	self assert: (currentTask numberOfIterations = 0).
	self processExecutionSimulator takeAndLoopTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	self assert: (currentTask numberOfIterations = 1).

	self processExecutionSimulator takeAndLoopTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	self assert: (currentTask numberOfIterations = 2).

	self processExecutionSimulator takeAndLoopTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	self assert: (currentTask numberOfIterations = 3).

	self processExecutionSimulator takeAndLoopTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	self assert: (currentTask numberOfIterations = 4).

	self processExecutionSimulator takeAndLoopTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	self assert: (currentTask numberOfIterations = 5).

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
	self assert: (currentTask numberOfIterations = 6).

	"Step 2 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.