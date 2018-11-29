searching
getLanesForGatewayNamed: aString

	^lanes select: [:each | each hasGatewayNamed: aString]