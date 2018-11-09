test
testExecuteProcess_01
	| currentTask endArtifact formInstance |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_name: 'john' amount: '15' time: '08:00:00' timeStamp: '2018-04-11T10:00:00' date: '2016-04-11' bool: 'true' in: procInstance.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: formInstance on: procInstance.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 3 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.