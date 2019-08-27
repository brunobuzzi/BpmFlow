test
testNoLoopWithAfterCondition
	| endArtifact currentTask formInstance |

	(procDefinition getTaskNamed: 'dashboard-form' ifNone: [self assert: false]) loop setTestTimeAsAfter.
	procInstance atExternalVariable: 'condition' put: 9;
		triggerStartEventWith: (self getUserNamed: 'john').

	"Step 1 - Form [task-1]" "Enter the loop once because is testTime = #after"
	currentTask := procInstance currentActivities last.

	formInstance := self formInstance_withValues: (self generateRandomValuesIn: TimeStamp now) in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime: TimeStamp now.
	self processExecutionSimulator takeAndLoopTask: currentTask withUserNamed: 'john' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').
	self assert: (currentTask numberOfIterations = 1).

	"Step 2 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.

	(procDefinition getTaskNamed: 'dashboard-form' ifNone: [self assert: false]) loop setTestTimeAsBefore.