other
testExecuteProcess
	| currentTask endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'john').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'john' withForm: self formInstance_random_dashboard_form on: procInstance.
	self assert: (currentTask getDefinitionName = 'dashboard-form').


	"Step 2 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.