execution
addToTakenMatrix
	"The receiver add itself to the global taken assignment matrix and set <matrix> instance variable with the new <BpmTasksHolderMatrix>"

	matrix := application takenTasksMatrix.

	matrix addAssignment: self