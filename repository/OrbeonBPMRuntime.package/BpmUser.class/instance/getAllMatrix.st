assignment
getAllMatrix
	"Answer a collection of <BpmFinishedTasksMatrix> where the receiver can take assignments"

	^self getApplications collect: [:each | self getMatrixManagerClass getMatrixForApplicationNamed: each applicationName]