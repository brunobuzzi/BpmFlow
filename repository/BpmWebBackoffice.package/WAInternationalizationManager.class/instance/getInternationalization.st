other
getInternationalization

	self session bpmEnvironment isAdminsEnvironment ifFalse: [^self session getInternationalization].

	selectedEnvironment ifNil: [^self session getInternationalization].

	^selectedEnvironment internationalization 
		ifNil: [self session getInternationalization] 
		ifNotNil: [selectedEnvironment internationalization]