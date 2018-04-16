matrix
getTakenProcessMatrix
	"The receiver answer the taken tasks matrix <aBpmTakenTasksMatrix> for it's application"

	^self getTakenTasksMatrixClass getMatrixForApplicationNamed: self applicationName