get artifacts
getStartEventNamed: aString ifNone: aBlock
	"The receiver answer the start event <BpmStartEventDefinition> named <aString> if such event does not exist evaluate <aBlock> "

	^executionPath getStartEventNamed: aString ifNone: aBlock