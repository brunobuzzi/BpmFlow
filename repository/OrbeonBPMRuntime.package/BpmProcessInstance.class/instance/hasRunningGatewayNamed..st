other
hasRunningGatewayNamed: aString
	"Answer whether or not the receiver has a running gateway named <aString>"

	^runningGateways includesKey: aString