get artifacts
getTransitionNamed: aString ifNone: aBlock
	"The receiver answer the transition <BpmTransitionDefinition> named <aString> if such transition does not exist evaluate <aBlock> "

	^executionPath getTransitionNamed: aString ifNone: aBlock