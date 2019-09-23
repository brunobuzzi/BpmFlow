other
getTaskDefinitionNamed: aString ifNone: aBlock
	"The receiver answer the task <BpmTaskDefinition> named <aString> if such task does not exist evaluate <aBlock> "

	^definition getTaskNamed: aString ifNone: aBlock