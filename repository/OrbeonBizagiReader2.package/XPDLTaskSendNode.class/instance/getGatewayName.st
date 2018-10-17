target identification
getGatewayName
	"The receiver answer the name of the gateway that holds the event to trap the message"

	^self extendedValueOf: 'gatewayName'