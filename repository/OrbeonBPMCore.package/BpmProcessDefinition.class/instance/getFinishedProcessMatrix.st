matrix
getFinishedProcessMatrix
	"The receiver answer the running tasks matrix <aBpmRunningTasksMatrix> for it's orbeon application"

	^self getFinishedMatrixManagerClass getMatrixForApplicationNamed: self applicationName