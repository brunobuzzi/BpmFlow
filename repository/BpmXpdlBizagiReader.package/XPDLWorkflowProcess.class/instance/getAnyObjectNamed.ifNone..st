searching
getAnyObjectNamed: aString ifNone: aBlock

	^self getTaskNamed: aString
			ifNone: [self getGatewayNamed: aString 
				ifNone: [self getSubprocessNamed: aString
					ifNone: [self getEndNodeNamed: aString ifNone: [nil]]]]