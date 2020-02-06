execution
addToAvailableMatrixForNextPerformer
	"The receiver add itself to the global available assignment matrix for the next performer"

	matrix := application availableTasksMatrix.

	matrix addAssignment: self forRoleNamed: (self getNextRoleIfNone: []) name.

	self user: nil.