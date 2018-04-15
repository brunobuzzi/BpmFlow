assignment
getAllFinishedMatrix
	"Answer a collection of <BpmFinishedTasksMatrix> where the receiver has access."

	^self getApplications collect: [:each | self getFinishedTasksMatrixClass getMatrixForApplicationNamed: each applicationName]