matrix
getFinishedProcessMatrix
	"The receiver answer the running tasks matrix <aBpmFinishedTasksMatrix> for it's orbeon application"

	^self defaultFinishedTasksMatrixClass getMatrixForApplicationNamed: self applicationName