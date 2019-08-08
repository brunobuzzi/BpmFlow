test
testAndExecutionContext_4
	| currentTask currentProcessMatrix finishedProcessMatrix processId |

	self grantUsers: {'andrew vo' -> 'visa officer'.} in: 'app-test-2'.
	procInstance := procDefinition createProcessInstance: (self getUserNamed: 'andrew vo').
	procInstance addAndContextApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'app-test');
		addAndContextApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'app-test-2').
	procInstance triggerStartEventWith: (self getUserNamed: 'andrew vo'). "the process start - the execution context must added before the process starts"

	self assert: (procInstance startEvent getDefinitionName = 'visa apply start').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	"Test Execution Context"
	"andrew vo has a role in 'app-test' aaplication but it not has a role in 'app-test-2' --> it has NO access to <procInstance>  "
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

	(self defaultFrontOfficeRoleClass getRoleNamed: 'visa officer' in: 'app-test-2') ungrantUser: (self getUserNamed: 'andrew vo').