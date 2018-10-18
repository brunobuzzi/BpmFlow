tasks
getRunningGatewayNamed: aString
	"Answer the running gateway named <aString> if none the answer <nil>"

	^self getRunningGatewayNamed: aString ifNone: [nil]