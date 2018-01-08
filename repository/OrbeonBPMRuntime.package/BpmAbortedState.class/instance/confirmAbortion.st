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

	isConfirmed ifFalse: [^AbortionNotConfirmedException signal: 'The Aborted state must be confirmed before execution'].

	self removeTakenAssignmentsFromUsers.

	self removeAllAssigmentsFromRunningMatrix.
	self removeAllAssigmentsFromFinishedMatrix.

	self removeTimerEventsFromEventMonitor.

	self removeAppFieldValuesFromProcessDefinition.

	process addToAbortedProcess.