execution
addToTakenMatrix
	"The receiver add itself to the global taken assignment matrix and set <matrix> instance variable with the new <BpmTasksHolderMatrix>"

	matrix := self getTakenTasksMatrixClass 
				getMatrixForApplicationNamed: self applicationName 
				ifAbsent: [self getTakenTasksMatrixClass newFor: application].

	matrix addAssignment: self