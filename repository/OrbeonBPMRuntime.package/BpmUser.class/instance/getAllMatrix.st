assignment
getAllMatrix
	"Answer a collection of <BpmRunningTasksMatrix> where the receiver can take assignments"

	^self getApplications collect: [:each | self getAvailableTasksMatrixClass getMatrixForApplicationNamed: each applicationName]