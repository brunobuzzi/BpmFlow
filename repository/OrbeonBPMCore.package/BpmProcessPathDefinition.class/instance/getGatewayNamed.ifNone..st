get artifacts
getGatewayNamed: aString ifNone: aBlock

	^gateways at: aString ifAbsent: aBlock