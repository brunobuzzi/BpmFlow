send
throwNoGatewayException

	^NoGatewayException signal: 'No gateway has been found with name [', receiverGatewayName, ']'.