test
testExecuteProcess_non_boolean_condition
	| currentTask gateway |

	self setNonBooleanCondition.
	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEventName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	"The non boolean result will produce an exception"
	[[self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_amount_exit on: procInstance] 
		on: AppEvaluationNotBooleanException 
		do: [:ex | ex pass. self assert: procInstance isPaused]] on: NoNextArtifactException do: [:ex | ex pass. self assert: true].
	self assert: procInstance isRunningWithException.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 2 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'gateway split').

	"The gateway has an invalid condition --> the process is paused --> the gateway has no next transition --> NoNextArtifactException --> message to the user"
	self assert: (((self getUserNamed: 'alberto') getSystemNotificationsIn: procInstance bpmEnvironment) anySatisfy: [:each | each processId = procInstance processId])