other
failedEvaluationCache

	FailedEvalCache ifNil: [self initializeFailedEvaluationCache].

	^FailedEvalCache