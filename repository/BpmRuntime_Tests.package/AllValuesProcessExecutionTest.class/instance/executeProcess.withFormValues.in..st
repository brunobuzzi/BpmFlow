create random process
executeProcess: aBpmProcessInstance withFormValues: anArray in: aTimeStamp
	| currentTask endArtifact formInstance |

	self assert: (aBpmProcessInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := aBpmProcessInstance currentActivities last.
	formInstance := self formInstance_withValues: anArray in: aBpmProcessInstance.
	formInstance createdTime: aTimeStamp;
		modifiedTime: aTimeStamp. 
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: aBpmProcessInstance.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Process End"
	endArtifact := aBpmProcessInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.