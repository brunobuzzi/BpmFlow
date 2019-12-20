matrix
getTakenProcessMatrix
	"The receiver answer the taken tasks matrix <aBpmTakenTasksMatrix> for it's application"

	^self defaultTakenTasksMatrixClass getMatrixForApplicationNamed: self applicationName