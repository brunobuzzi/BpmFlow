test
testOrExecutionContext_2
	| currentTask currentProcessMatrix finishedProcessMatrix processId |

	procInstance := procDefinition createProcessInstance: (self getUserNamed: 'andrew vo').
	procInstance addOrContextApplication: (self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: 'app-test').
	procInstance triggerStartEventWith: (self getUserNamed: 'andrew vo'). "the process start - the execution context must added before the process starts"

	self assert: (procInstance startEventName = 'visa apply start').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	"Test Execution Context"
	"andrew vo has a role in 'app-test' aaplication --> it has access to <procInstance>  "
	self assert: (((self getUserNamed: 'andrew vo') getAllAvailableTaskAssignmentsIn: (self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue')) select: [:each | each processId = procInstance id]) size
			equals: 1.
	self assert: (((self getUserNamed: 'clark') getAllAvailableTaskAssignmentsIn: (self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'env-ue')) select: [:each | each processId = procInstance id]) size
			equals: 0.

	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'visa officer' satisfying: {:assign | assign.processId = processId}) size = 1).

	self resumeAssignFromTask2AndTestProcess: procInstance.