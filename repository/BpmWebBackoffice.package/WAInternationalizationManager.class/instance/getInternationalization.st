other
getInternationalization

	self session bpmEnvironment isAdminsEnvironment ifFalse: [^self session getInternationalization].

	currentInternationalization ifNil: [^self session getInternationalization].

	^currentInternationalization