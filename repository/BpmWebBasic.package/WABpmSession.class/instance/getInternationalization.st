other
getInternationalization

	^bpmEnvironment ifNil: [super getInternationalization] ifNotNil: [bpmEnvironment internationalization]