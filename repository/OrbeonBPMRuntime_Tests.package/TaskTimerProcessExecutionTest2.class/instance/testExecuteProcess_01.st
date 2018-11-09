test
testExecuteProcess_01
	| currentTask |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vm').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [set-timer-term]"

	currentTask := procInstance currentActivities last.

	self assert: (procInstance currentActivities size = 1).
	self assert: (procInstance currentActivities last attachedEvents size = 1).
	self assert: (currentTask getDefinitionName = 'set-timer-term').
	self assert: (self defaultTimerEventMonitor monitoredEvents select: [:each | each processId = procInstance processId]) notEmpty.

	"formInstance_set_timer_term: is set with 15 seconds and this number is used by timer named Term to wait before finishing the process"
	"the attached event wait for 10 seconds and after that trigger a new transition"

	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' withForm: self formInstance_set_timer_term_3 on: procInstance.  "15 seconds to wait"

	self assert: ((procInstance getEventsNamed: 'term' ifNone: [self assert: false]) size = 1).
	self assert: procInstance currentActivities isEmpty.

	self defaultTimerEventMonitor triggerArtifactTimers.
	self assert: procInstance currentActivities isEmpty.
	self assert: ((procInstance getEventsNamed: 'term' ifNone: [self assert: false]) size = 1).
	self deny: procInstance hasFinalized.
	self assert: (self defaultTimerEventMonitor monitoredEvents select: [:each | each processId = procInstance processId]) notEmpty.

	(Delay forSeconds: 8) wait.
	self defaultTimerEventMonitor triggerArtifactTimers.
	self assert: procInstance currentActivities isEmpty.
	self assert: ((procInstance getEventsNamed: 'term' ifNone: [self assert: false]) size = 1).
	self deny: procInstance hasFinalized.
	self assert: (self defaultTimerEventMonitor monitoredEvents select: [:each | each processId = procInstance processId]) notEmpty.

	(Delay forSeconds: 9) wait.
	self defaultTimerEventMonitor triggerArtifactTimers.
	self assert: procInstance hasFinalized.
	self assert: (self defaultTimerEventMonitor monitoredEvents select: [:each | each processId = procInstance processId]) isEmpty.