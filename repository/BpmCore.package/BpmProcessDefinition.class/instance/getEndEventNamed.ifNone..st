get artifacts
getEndEventNamed: aString ifNone: aBlock
	"The receiver answer the end event <BpmEndEventDefinition> named <aString> if such event does not exist evaluate <aBlock> "

	^executionPath getEndEventNamed: aString ifNone: aBlock