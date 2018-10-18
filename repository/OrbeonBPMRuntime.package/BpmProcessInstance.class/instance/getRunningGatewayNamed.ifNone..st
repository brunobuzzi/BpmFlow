tasks
getRunningGatewayNamed: aString ifNone: aBlock
	"Answer the running gateway named <aString> if none the answer <nil>"

	^runningGateways at: aString ifAbsent: aBlock