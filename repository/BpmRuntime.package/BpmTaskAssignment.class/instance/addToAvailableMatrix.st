execution
addToAvailableMatrix
	"The receiver add itself to the global available assignment matrix "

	matrix := self defaultAvailableTasksMatrixClass
				getMatrixForApplicationNamed: self applicationName 
				ifAbsent: [NoMatrixForApplicationException signal: 'No Matrix for application named [', self applicationName, ']'].

	matrix addAssignment: self.

	self user: nil.