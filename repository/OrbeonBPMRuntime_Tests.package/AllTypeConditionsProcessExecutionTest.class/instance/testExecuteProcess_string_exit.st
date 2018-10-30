test
testExecuteProcess_string_exit
	| currentTask gateway endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_string_exit.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'gateway split').
	"Step 3 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'string end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.