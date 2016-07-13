searching
getGatewayNamed: aString ifNone: aBlock

	^self getGatewayNodes detect: [:each | each getName = aString] ifNone: aBlock