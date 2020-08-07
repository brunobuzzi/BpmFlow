test
testExecuteProcess_failed_evaluation_2
	| currentTask currentTask2 gateway transition1 transition2 evaluation1 evaluation2 |

	gateway := procDefinition getGatewayNamed: 'task 4 or 5' ifNone: [self assert: false]. 
	transition1 := gateway outTransitionsAt: 1.
	transition2 := gateway outTransitionsAt: 2.
	evaluation1 := transition1 conditionToRun evaluationCode.
	evaluation2 := transition2 conditionToRun evaluationCode.
	transition1 evaluationCode: '[:proc | 4]'.
	transition2 evaluationCode: '[:proc | proc foo]'.

	self assert: (procInstance startEventName = 'start all').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task1 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-1').
	"Step 2 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'split 2 and 3').
	"Step 3 - Form [task-2] and [task-3]"
	currentTask :=  procInstance currentActivities first.
	currentTask2 :=  procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask2 withUserNamed: 'alberto' withForm: self formInstance_task3_1 on: procInstance.
	self assert: (currentTask2 getDefinitionName = 'task-3').
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task2_1 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-2').
	"Step 4 - TWO Gateway Evaluations"
	gateway := procInstance executedGatewaysSecond.
	self assert: (gateway getDefinitionName = 'merge 2 and 3').
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'task 4 or 5').

	self assert: procInstance failedEvaluationsSize equals: 2.
	self assert: procInstance currentState isRunning equals: true.
	self assert: procInstance currentState hasException equals: true.

	"restore the original evaluation code"
	transition1 evaluationCode: evaluation1.
	transition2 evaluationCode: evaluation2.