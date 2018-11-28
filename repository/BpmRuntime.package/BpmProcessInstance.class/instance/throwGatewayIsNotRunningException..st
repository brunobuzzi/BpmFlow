execeptions
throwGatewayIsNotRunningException: aString

	^GatewayIsNotRunningException signal: 'The Gateway named [', aString, '] is not running'