other
getFailedEvaluations
	"Answer a collection of state with failed evaluations"

	^states select: [:each | each isRunningWithException]