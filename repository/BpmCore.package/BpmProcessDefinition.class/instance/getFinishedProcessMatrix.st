matrix
getFinishedProcessMatrix
	"The receiver answer the running tasks matrix <aBpmFinishedTasksMatrix> for it's orbeon application"

	^self getFinishedTasksMatrixClass getMatrixForApplicationNamed: self applicationName