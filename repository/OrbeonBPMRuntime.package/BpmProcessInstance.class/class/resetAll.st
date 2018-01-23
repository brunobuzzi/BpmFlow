other
resetAll

	BpmUser resetAll. "remove user's assignments"

	self getMatrixManagerClass resetAll. "remove all assignments from the matrix"

	BpmProcessDefinition removeAllFormFieldInstances.

	BpmProcessInstanceCategory resetAll.

	self defaultTimerEventMonitor class initializeDefault.