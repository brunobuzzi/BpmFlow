execution
addToTakenMatrix
	"The receiver add itself to the global taken assignment matrix and set <matrix> instance variable with the new <BpmTasksHolderMatrix>"

	matrix := self defaultTakenTasksMatrixClass 
				getMatrixForApplicationNamed: self applicationName 
				ifAbsent: [self defaultTakenTasksMatrixClass newFor: application].

	matrix addAssignment: self