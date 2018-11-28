execution
removeRunningGatewayNamed: aString
	"The receiver remove the gateway named <aString> if not present throw a no running gateway exception"

	^runningGateways removeKey: aString ifAbsent: [self throwGatewayIsNotRunningException: aString]