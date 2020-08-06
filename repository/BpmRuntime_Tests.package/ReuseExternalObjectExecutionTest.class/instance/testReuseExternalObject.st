test
testReuseExternalObject
	| currentTask currentProcessMatrix finishedProcessMatrix processId takenProcessMatrix endArtifact componentClass |

	self assert: (procInstance startEventName = 'inicio').
	processId := procInstance id.
	currentProcessMatrix := procInstance getAvailableProcessMatrix.
	takenProcessMatrix := procInstance getTakenProcessMatrix.
	finishedProcessMatrix := procInstance getFinishedProcessMatrix.

	"Step 1 - Form [citizen-appliance]"
	currentTask := procInstance currentActivities last.
	componentClass := currentTask getComponentClass. 
	self assert: (currentTask getDefinitionName = 'citizen-appliance').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'user' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vo' withForm: self formInstance_citizen_appliance on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'user' satisfying: {:assign | assign.processId = processId}) size = 1).

	"Step 2 - Form [citizen-appliance-edit]"
	self assert: (currentTask externalObject == procInstance currentActivities last externalObject).
	currentTask := procInstance currentActivities last.
	self assert: (componentClass == currentTask getComponentClass).
	self assert: (currentTask getDefinitionName = 'citizen-appliance-edit').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vm' on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'approver' satisfying: {:assign | assign.processId = processId}) size = 1).

	"Step 3 - Form [citizen-appliance-edit]"
	self assert: (currentTask externalObject == procInstance currentActivities last externalObject).
	currentTask := procInstance currentActivities last.
	self assert: (componentClass == currentTask getComponentClass).
	self assert: (currentTask getDefinitionName = 'citizen-appliance-edit-2').
	self assert: (currentProcessMatrix getAvailableTasksFor: 'form-admin' satisfying: {:assign | assign.processId = processId}) notEmpty.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'andrew vc' on: procInstance.
	self assert: ((finishedProcessMatrix getAvailableTasksFor: 'form-admin' satisfying: {:assign | assign.processId = processId}) size = 1).

	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'fin'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.