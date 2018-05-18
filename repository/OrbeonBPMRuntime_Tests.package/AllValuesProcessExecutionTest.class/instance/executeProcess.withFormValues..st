execution
executeProcess: aBpmProcessInstance withFormValues: anArray
	| currentTask endArtifact |

	self assert: (aBpmProcessInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := aBpmProcessInstance currentActivities last.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: (self formInstance_withValues: anArray in: aBpmProcessInstance) on: aBpmProcessInstance.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Process End"
	endArtifact := aBpmProcessInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'end') and: [endArtifact isEndEvent]).