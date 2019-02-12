other
newFor: aBpmProcessInstance task: aBpmTaskInstance in: aBpmTasksMatrix

	^super new initialize
		setProcess: aBpmProcessInstance;
		setTask: aBpmTaskInstance;
		matrix: aBpmTasksMatrix;
		yourself