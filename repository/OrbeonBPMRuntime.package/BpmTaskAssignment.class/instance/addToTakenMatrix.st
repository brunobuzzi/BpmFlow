execution
addToTakenMatrix
	"The receiver add itself to the global taken assignment matrix "

	matrix := self getTakenTasksMatrixClass 
				getMatrixForApplicationNamed: self applicationName 
				ifAbsent: [NoMatrixForApplicationException signal: 'No Matrix for application named [', self applicationName, ']'].

	matrix addAssignment: self