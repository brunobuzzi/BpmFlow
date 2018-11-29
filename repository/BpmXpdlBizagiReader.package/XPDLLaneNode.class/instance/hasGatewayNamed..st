other
hasGatewayNamed: aString

	^self getGatewayNodes anySatisfy: [:each | each getName = aString]