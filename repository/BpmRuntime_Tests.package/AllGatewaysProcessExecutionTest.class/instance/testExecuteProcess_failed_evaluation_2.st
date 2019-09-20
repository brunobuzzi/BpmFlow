test
testExecuteProcess_failed_evaluation_2
	| currentTask currentTask2 gateway transition1 transition2 evaluation1 evaluation2 |

	gateway := procDefinition getGatewayNamed: 'task 4 or 5' ifNone: [self assert: false]. 
	transition1 := gateway outTransitions at: 1.
	transition2 := gateway outTransitions at: 2.
	evaluation1 := transition1 conditionToRun evaluationCode.
	evaluation2 := transition2 conditionToRun evaluationCode.
	transition1 conditionToRun evaluationCode: '[:proc | 4]'.
	transition2 conditionToRun evaluationCode: '[:proc | proc foo]'.
	
	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').
	"we force the creation of form definition because is used in a condition"
"	self formInstance_task5. 
	self formInstance_task5_1.
	self formInstance_task7."

	self assert: (procInstance startEvent getDefinitionName = 'start all').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task1 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-1').
	"Step 2 - Gateway Evaluation"
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'split 2 and 3').
	"Step 3 - Form [task-2] and [task-3]"
	currentTask :=  procInstance currentActivities first.
	currentTask2 :=  procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask2 withUserNamed: 'alberto' withForm: self formInstance_task3_1 on: procInstance.
	self assert: (currentTask2 getDefinitionName = 'task-3').
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task2_1 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-2').
	"Step 4 - TWO Gateway Evaluations"
	gateway := procInstance executedGateways asOrderedCollection second.
	self assert: (gateway getDefinitionName = 'merge 2 and 3').
	gateway := procInstance executedGateways asOrderedCollection last.
	self assert: (gateway getDefinitionName = 'task 4 or 5').

	self assert: procInstance failedEvaluations size equals: 2.
	self assert: procInstance currentState isRunning equals: true.
	self assert: procInstance currentState hasException equals: true.

	"restore the original evaluation code"
	transition1 conditionToRun evaluationCode: evaluation1.
	transition2 conditionToRun evaluationCode: evaluation2.