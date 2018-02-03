matrix
getProcessMatrix
	"The receiver answer the running tasks matrix <aBpmRunningTasksMatrix> for it's application"

	^self getMatrixManagerClass getMatrixForApplicationNamed: self applicationName