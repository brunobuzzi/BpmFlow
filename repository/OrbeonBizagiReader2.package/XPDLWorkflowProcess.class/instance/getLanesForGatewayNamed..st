other
getLanesForGatewayNamed: aString

	^self isEmbedded
	ifFalse: [parentPool getLanesForGatewayNamed: aString]
	ifTrue: [parentWorkflow getLanesForGatewayNamed: aString].