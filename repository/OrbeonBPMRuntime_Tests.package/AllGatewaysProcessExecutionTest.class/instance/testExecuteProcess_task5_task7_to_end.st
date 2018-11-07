test
testExecuteProcess_task5_task7_to_end
	| currentTask currentTask2 gateway endArtifact |

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	self assert: (procInstance startEvent getDefinitionName = 'start all').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task1.
	self assert: (currentTask getDefinitionName = 'task-1').
	"Step 2 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'split 2 and 3').
	"Step 3 - Form [task-2] and [task-3]"
	currentTask :=  procInstance currentActivities first.
	currentTask2 :=  procInstance currentActivities last.
	self takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task2.
	self assert: (currentTask getDefinitionName = 'task-2').
	self takeAndFinalizeTask: currentTask2 withUserNamed: 'alberto' withForm: self formInstance_task3.
	self assert: (currentTask2 getDefinitionName = 'task-3').
	"Step 4 - TWO Gateway Evaluations"
	gateway := procInstance executedGateways asOrderedCollection second.
	self assert: (gateway getDefinitionName = 'merge 2 and 3').
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'task 4 or 5').
	"Step 5 - Form [task-5]"
	currentTask := procInstance currentActivities last.
	self takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task5.
	self assert: (currentTask getDefinitionName = 'task-5').
	"Step 6 - Form [task-6]"
	currentTask := procInstance currentActivities last.
	self takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task6_1.
	self assert: (currentTask getDefinitionName = 'task-6').
	"Step 7 - Form [task-7]"
	currentTask := procInstance currentActivities last.
	self takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task7.
	self assert: (currentTask getDefinitionName = 'task-7').
	"Step 8 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end all'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.