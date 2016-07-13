get artifacts
getScriptNamed: aString ifNone: aBlock
	"The receiver answer the task <BpmScriptTaskDefinition> named <aString> if such task does not exist evaluate <aBlock> "

	^executionPath getScriptNamed: aString ifNone: aBlock