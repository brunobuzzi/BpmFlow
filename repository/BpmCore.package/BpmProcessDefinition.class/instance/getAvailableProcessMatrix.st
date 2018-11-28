matrix
getAvailableProcessMatrix
	"The receiver answer the running tasks matrix <aBpmAvailableTasksMatrix> for it's application"

	^self getAvailableTasksMatrixClass getMatrixForApplicationNamed: self applicationName