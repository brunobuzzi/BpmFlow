execution
confirmAbortion
"
    - Remove all tasks from BpmRunningTasksMatrix
    - Remove assignments from BpmUsers.
    - Remove timer events from BpmTimerEventMonitor
	- Remove BpmProcessInstance from BpmProcessDefinition processInstances
	- Remove all AppFieldValue subinstances from BpmProcessDefinition formFieldInstances
    - What else ?
"
	self removeTakenAssignmentsFromUsers.

	self removeAllAssigmentsFromRunningMatrix.
	self removeAllAssigmentsFromFinishedMatrix.

	self removeTimerEventsFromEventMonitor.

	self removeAppFieldValuesFromProcessDefinition. "this maybe not the case"

	process addToAbortedProcess.