other
defaultAction
	"The receiver pause the process where the error occurred"

	evaluationResult result: false.
	bpmProcess resumeProcessWithException: self. "no user"