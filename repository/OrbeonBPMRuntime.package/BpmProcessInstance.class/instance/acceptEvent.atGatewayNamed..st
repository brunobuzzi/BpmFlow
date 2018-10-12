events
acceptEvent: aBpmEventInstance atGatewayNamed: aString
	"The receiver accept and process the event <aBpmEventInstance> for the running gateway named <aString>"
	| gateway |

	gateway := self getRunningGatewayNamed: aString.

	gateway ifNil: [^BpmImproperOperationException signal: 'No running Gateway named [', aString, ']'].

	self registerEvent: aBpmEventInstance.

	^aBpmEventInstance generateNextRunningTransitions