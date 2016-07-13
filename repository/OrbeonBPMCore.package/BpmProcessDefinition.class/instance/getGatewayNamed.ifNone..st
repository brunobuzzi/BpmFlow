get artifacts
getGatewayNamed: aString ifNone: aBlock
	"The receiver answer the gateway <BpmGatewayDefinition> named <aString> if such gateway does not exist evaluate <aBlock> "

	^executionPath getGatewayNamed: aString ifNone: aBlock