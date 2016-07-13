other
getRunningGatewayNamed: aString
	"Answer the running gateway named <aString> if none the answer <nil>"

	^runningGateways at: aString ifAbsent: [nil]