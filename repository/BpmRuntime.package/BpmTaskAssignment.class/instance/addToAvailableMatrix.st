execution
addToAvailableMatrix
	"The receiver add itself to the global available assignment matrix "

	matrix := application availableTasksMatrix.

	matrix addAssignment: self.

	self user: nil.