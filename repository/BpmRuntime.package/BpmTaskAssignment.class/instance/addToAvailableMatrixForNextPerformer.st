execution
addToAvailableMatrixForNextPerformer
	"The receiver add itself to the global available assignment matrix for the next performer"

	matrix := self defaultAvailableTasksMatrixClass
				getMatrixForApplicationNamed: self applicationName 
				ifAbsent: [NoMatrixForApplicationException signal: 'No Matrix for application named [', self applicationName, ']'].

	matrix addAssignment: self forRoleNamed: (self getNextRoleIfNone: []) name.

	self user: nil.