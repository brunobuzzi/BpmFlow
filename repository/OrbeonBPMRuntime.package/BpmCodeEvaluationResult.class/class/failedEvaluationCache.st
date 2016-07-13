other
failedEvaluationCache

	FailedEvalCache ifNil: [FailedEvalCache := OrderedCollection new].

	^FailedEvalCache