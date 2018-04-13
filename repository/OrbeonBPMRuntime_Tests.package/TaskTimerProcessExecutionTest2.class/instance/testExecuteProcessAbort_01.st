test
testExecuteProcessAbort_01
	"formInstance_set_timer_term: is set with 15 seconds and this number is used by timer named Term to wait before finishing the process"
	"the attached event wait for 10 seconds and after that trigger a new transition"
	| currentTask processId currentProcessMatrix finishedProcessMatrix |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vm').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [set-timer-term]"

	currentTask := procInstance currentActivities last.

	self assert: (procInstance currentActivities size = 1).
	self assert: (procInstance currentActivities last attachedEvents size = 1).
	self assert: (currentTask getDefinitionName = 'set-timer-term').
	self assert: (self defaultTimerEventMonitor monitoredEvents select: [:each | each processId = procInstance processId]) notEmpty.

	self assert: (currentProcessMatrix getAvailableTasksFor: 'timer-role' satisfying: {:assign | assign.processId = processId}) notEmpty.

	procInstance abortProcess: nil.
	procInstance currentState isConfirmed: true. 
	procInstance confirmAbortion.

	self assert: (self defaultTimerEventMonitor monitoredEvents select: [:each | each processId = procInstance processId]) isEmpty.
	self assert: (currentProcessMatrix getAvailableTasksFor: 'timer-role' satisfying: {:assign | assign.processId = processId}) isEmpty.
	self assert: (finishedProcessMatrix getAvailableTasksFor: 'timer-role' satisfying: {:assign | assign.processId = processId}) isEmpty.