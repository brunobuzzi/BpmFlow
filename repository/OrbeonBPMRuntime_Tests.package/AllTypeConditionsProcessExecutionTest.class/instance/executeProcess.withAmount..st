execution
executeProcess: aBpmProcessInstance withAmount: amountString
	| currentTask gateway endArtifact |

	self assert: (aBpmProcessInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := aBpmProcessInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'alberto' withForm: (self formInstance_amount_exit: amountString in: aBpmProcessInstance).
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Gateway Evaluation"
	gateway := aBpmProcessInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'gateway split').
	"Step 3 - Process End"
	endArtifact := aBpmProcessInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'integer end') and: [endArtifact isEndEvent]).