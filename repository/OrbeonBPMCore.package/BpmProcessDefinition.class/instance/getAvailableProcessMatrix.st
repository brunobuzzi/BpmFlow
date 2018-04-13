matrix
getAvailableProcessMatrix
	"The receiver answer the running tasks matrix <aBpmRunningTasksMatrix> for it's application"

	^self getAvailableTasksMatrixClass getMatrixForApplicationNamed: self applicationName