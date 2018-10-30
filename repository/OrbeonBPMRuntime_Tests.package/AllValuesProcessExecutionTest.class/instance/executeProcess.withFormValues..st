execution
executeProcess: aBpmProcessInstance withFormValues: anArray
	| currentTask endArtifact formInstance |

	self assert: (aBpmProcessInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := aBpmProcessInstance currentActivities last.
	formInstance := self formInstance_withValues: anArray in: aBpmProcessInstance.
	formInstance createdTime: (TimeStamp fromOrbeonString: (anArray at: 4));
		modifiedTime: (TimeStamp fromOrbeonString: (anArray at: 4)). 
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: aBpmProcessInstance.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Process End"
	endArtifact := aBpmProcessInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.