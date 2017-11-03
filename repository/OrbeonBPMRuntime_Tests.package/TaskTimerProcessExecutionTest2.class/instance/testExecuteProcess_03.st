other
testExecuteProcess_03
	| currentTask |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vm').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [set-timer-term]"

	currentTask := procInstance currentActivities last.

	self assert: (procInstance currentActivities size = 1).
	self assert: (procInstance currentActivities last attachedEvents size = 1).
	self assert: (currentTask getDefinitionName = 'set-timer-term').

	(Delay forSeconds: 5) wait.
	self defaultTimerEventMonitor triggerArtifactTimers.
	self assert: (procInstance currentActivities size = 1).
	self assert: (procInstance currentActivities last attachedEvents size = 1).
	self assert: (currentTask getDefinitionName = 'set-timer-term').

	(Delay forSeconds: 7) wait.
	self defaultTimerEventMonitor triggerArtifactTimers.
	self assert: (procInstance currentActivities size = 2).
	self deny: procInstance hasFinalized.
	(Delay forSeconds: 12) wait.
	self defaultTimerEventMonitor triggerArtifactTimers.
	self assert: (procInstance currentActivities size = 3).
	currentTask := procInstance currentActivities first.

	self processTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_set_timer_term_3. "15 seconds to wait"
	self assert: ((procInstance getEventsNamed: 'term' ifNone: [self assert: false]) size = 1).
	(Delay forSeconds: 18) wait.
	self defaultTimerEventMonitor triggerArtifactTimers.
	self assert: ((procInstance getEventsNamed: 'term' ifNone: [self assert: false]) size = 1).
	self assert: procInstance hasFinalized.
	self assert: (procInstance currentActivities size = 2).