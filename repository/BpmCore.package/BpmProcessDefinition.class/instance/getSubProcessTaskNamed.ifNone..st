get artifacts
getSubProcessTaskNamed: aString ifNone: aBlock
	"The receiver answer the subprocess <BpmProcessDefinition> named <aString> if such subprocess does not exist evaluate <aBlock> "

	^executionPath getSubProcessTaskNamed: aString ifNone: aBlock