other
topPool

	parentWorkflow ifNotNil: [^parentWorkflow topPool].

	parentPool ifNil: [^ImproperBpmOperationException signal: 'No parent pool !!!'].

	^parentPool