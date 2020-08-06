execution
executeProcess: aBpmProcessInstance withAmount: amountString
	| currentTask gateway endArtifact |

	self assert: (aBpmProcessInstance startEventName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := aBpmProcessInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: (self formInstance_amount_exit: amountString in: aBpmProcessInstance) on: procInstance.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Gateway Evaluation"
	gateway := aBpmProcessInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'gateway split').
	"Step 3 - Process End"
	endArtifact := aBpmProcessInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'integer end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.