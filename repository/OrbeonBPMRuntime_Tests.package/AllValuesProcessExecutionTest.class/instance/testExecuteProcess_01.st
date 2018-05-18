test
testExecuteProcess_01
	| currentTask endArtifact form |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'andrew vo').

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	form := self formInstance_name: 'john' amount: '15' time: '08:00:00' timeStamp: '2018-04-11T10:00:00' date: '2016-04-11' bool: 'true' in: procInstance.
	self processTask: currentTask withUserNamed: 'andrew vo' withForm: form.
	self assert: (currentTask getDefinitionName = 'all-field-types').
	"Step 3 - Process End"
	endArtifact := procInstance endEvents asOrderedCollection last.
	self assert: ((endArtifact getDefinitionName = 'end') and: [endArtifact isEndEvent]).