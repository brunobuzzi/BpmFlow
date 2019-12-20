get artifacts
getTaskNamed: aString ifNone: aBlock
	"The receiver answer the task <BpmTaskDefinition> named <aString> if such task does not exist evaluate <aBlock> "

	^executionPath getTaskNamed: aString ifNone: aBlock