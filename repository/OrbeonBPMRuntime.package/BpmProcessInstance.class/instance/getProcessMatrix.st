other
getProcessMatrix
	"The receiver answer the running tasks matrix <aBpmRunningTasksMatrix> for it's orbeon application"

	^self getMatrixManagerClass getMatrixForApplicationNamed: self applicationName