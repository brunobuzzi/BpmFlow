other
testExecuteProcess_01
	| currentTask |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vm').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [set-timer-term]"

	currentTask := procInstance currentActivities last.

	self assert: (procInstance currentActivities size = 1).
	self assert: (procInstance currentActivities last attachedEvents size = 1).
	self assert: (currentTask getDefinitionName = 'set-timer-term').

	"formInstance_set_timer_term: is set with 60 seconds and this number is used by timer named Term to wait before finishing the process"
	"self processTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_set_timer_term."