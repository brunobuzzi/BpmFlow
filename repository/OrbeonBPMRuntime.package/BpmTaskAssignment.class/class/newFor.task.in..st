other
newFor: aBpmProcessInstance task: aBpmTaskInstance in: aBpmRunningTasksMatrix

	^super new initialize
		setProcess: aBpmProcessInstance;
		setTask: aBpmTaskInstance;
		matrix: aBpmRunningTasksMatrix;
		yourself