other
getInternationalization

	^(bpmEnvironment isNil or: [bpmEnvironment internationalization isNil])
		ifTrue: [super getInternationalization]
		ifFalse: [bpmEnvironment internationalization]