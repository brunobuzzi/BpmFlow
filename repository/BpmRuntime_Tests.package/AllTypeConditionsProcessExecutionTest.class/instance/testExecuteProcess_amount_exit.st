test
testExecuteProcess_amount_exit
	| currentTask gateway endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEventName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_amount_exit on: procInstance.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'gateway split').
	"Step 3 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'integer end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.