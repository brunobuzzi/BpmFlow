execution
addToTakenMatrix
	"The receiver add itself to the global taken assignment matrix "

	matrix := self getTakenTasksMatrixClass 
				getMatrixForApplicationNamed: self applicationName 
				ifAbsent: [self getTakenTasksMatrixClass newFor: application].

	matrix addAssignment: self