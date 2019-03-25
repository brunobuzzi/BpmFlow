matrix
getAvailableProcessMatrix
	"The receiver answer the running tasks matrix <aBpmAvailableTasksMatrix> for it's application"

	^self defaultAvailableTasksMatrixClass getMatrixForApplicationNamed: self applicationName