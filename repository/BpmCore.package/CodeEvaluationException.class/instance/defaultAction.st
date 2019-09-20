other
defaultAction
	"The receiver pause the process where the error occurred"

	self storeInProcess.
	evaluationResult result: false.
	bpmProcess resumeProcessWithException: self. "no user"