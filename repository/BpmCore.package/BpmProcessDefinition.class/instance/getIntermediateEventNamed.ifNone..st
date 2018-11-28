get artifacts
getIntermediateEventNamed: aString ifNone: aBlock
	"The receiver answer the intermediate event <BpmIntermediateEventDefinition> named <aString> if such event does not exist evaluate <aBlock> "

	^executionPath getIntermediateEventNamed: aString ifNone: aBlock