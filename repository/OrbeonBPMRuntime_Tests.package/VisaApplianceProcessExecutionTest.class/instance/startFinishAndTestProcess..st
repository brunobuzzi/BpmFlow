execution and test
startFinishAndTestProcess: aBpmProcessInstance
	"The receiver start the execution of the new created <aBpmProcessInstance> and finish it execution"
	| currentTask processId currentProcessMatrix finishedProcessMatrix assignment |

	self assert: (aBpmProcessInstance startEvent getDefinitionName = 'visa apply start').
	processId := aBpmProcessInstance id.
	currentProcessMatrix := aBpmProcessInstance getAvailableProcessMatrix.
	finishedProcessMatrix := aBpmProcessInstance getFinishedProcessMatrix.

	"Step 1 - Form [citizen-appliance]"
	currentTask := aBpmProcessInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').

	assignment := aBpmProcessInstance getCurrentTaskAssignmentFor: currentTask ifNone: [self assert: false].
	self associate: assignment withForm: (self formInstance_citizen_appliance: aBpmProcessInstance) on: aBpmProcessInstance.
	self finalizeAssignment: assignment withUserNamed: assignment getUsername on: aBpmProcessInstance.

	self assert: ((finishedProcessMatrix getAvailableTasksFor: assignment getUsername satisfying: {:assign | assign.processId = processId}) size = 1).

	self resumeFromTask2AndTestProcess: aBpmProcessInstance.